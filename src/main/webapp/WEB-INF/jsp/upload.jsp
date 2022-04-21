<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
    // 給拖曳區畫個框線
    #dragArea {
        width:200px;
        border-style:dashed;
        border-width:0.2em;
        height:200px;
    }
    h4 {
        margin:20px auto 10px;
    }
</style>
</head>
<body>

<input type="file" name="file" id="img_upload_file" multiple="multiple"  /> 
<input type="hidden" name="img_upload_base" id="img_upload_base" />
<label>圖片預覽</label> <img id="img_upload_show" />

<!-- // input瀏覽檔案 -->
<!-- <h4>Upload image:</h4> -->
<!-- <form enctype="multipart/form-data"> -->
<!--     <input id="uploadImage" type="file" accept="image/*"> -->
<!-- </form> -->

<!-- // 拖曳放置檔案 -->
<!-- <h4>Or drop image here:</h4> -->
<!-- <div id="dragArea"></div> -->

<!-- // 預覽檔案 -->
<!-- <h4>Preview:</h4> -->
<!-- <div id="previewDiv"></div> -->

<script>

$("#img_upload_file").change(function() {
    var file = this.files[0];
    var reader = new FileReader();
    reader.readAsDataURL(file);//呼叫自帶方法進行轉換
    reader.onload = function(e) {
        $("#img_upload_show").attr("src", this.result);//將轉換後的編碼存入src完成預覽
        $("#img_upload_base").val(this.result);//將轉換後的編碼儲存到input供後臺使用
    }; 
});

// // 預覽圖片，將取得的files一個個取出丟到convertFile()
// function previewFiles(files) {
//     if (files && files.length >= 1) {
//         $.map(files, file => {
//             convertFile(file)
//                 .then(data => {
//                   console.log(data) // 把編碼後的字串輸出到console
//                   showPreviewImage(data, file.name)
//                 })
//                 .catch(err => console.log(err))
//         })
//     }
// }

// // 使用FileReader讀取檔案，並且回傳Base64編碼後的source
// function convertFile(file) {
//     return new Promise((resolve,reject)=>{
//         // 建立FileReader物件
//         let reader = new FileReader()
//         // 註冊onload事件，取得result則resolve (會是一個Base64字串)
//         reader.onload = () => { resolve(reader.result) }
//         // 註冊onerror事件，若發生error則reject
//         reader.onerror = () => { reject(reader.error) }
//         // 讀取檔案
//         reader.readAsDataURL(file)
//     })
// }

// // 在頁面上新增<img>
// function showPreviewImage(src, fileName) {
//     let image = new Image(250) // 設定寬250px
//     image.name = fileName
//     image.src = src // <img>中src屬性除了接url外也可以直接接Base64字串
//     $("#previewDiv").append(image).append(`<p>File: ${image.name}`)
// }

// // 當上傳檔案改變時清除目前預覽圖，並且呼叫previewFiles()
// $("#upimg").change(function(){
//     $("#previewDiv").empty() // 清空當下預覽
//     previewFiles(this.files) // this即為<input>元素
// })

// // dragover事件：拖曳(滑鼠還沒鬆開)至放置區時，就要先防止瀏覽器進行開圖
// $("#dragArea").on("dragover", function(e) {
//     e.preventDefault()
// })

// // 當拖曳區發生drop事件時，接受格式為image的資料
// $("#dragArea").on("drop", function(e){
//     // 防止事件傳遞及預設事件發生
//     e.stopPropagation()
//     e.preventDefault()
//     // 取得data type為image/*的資料
//     e.originalEvent.dataTransfer.getData("image/*")
//     let files = e.originalEvent.dataTransfer.files
//     console.dir(files) // 看看File長什麼樣子
//     $("#previewDiv").empty() // 清空當下預覽
//     previewFiles(files)
// })


</script>
</body>
</html>