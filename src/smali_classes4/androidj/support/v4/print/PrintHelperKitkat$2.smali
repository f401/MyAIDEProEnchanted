.class Landroidj/support/v4/print/PrintHelperKitkat$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/print/PrintHelperKitkat;

.field final val$attributes:Landroid/print/PrintAttributes;

.field final val$bitmap:Landroid/graphics/Bitmap;

.field final val$cancellationSignal:Landroid/os/CancellationSignal;

.field final val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final val$fittingMode:I

.field final val$pdfAttributes:Landroid/print/PrintAttributes;

.field final val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 9

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    iput-object p7, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    new-instance v2, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-object v1, v1, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {v2, v1, v3}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-object v3, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v4}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v4

    invoke-static {v1, v3, v4}, Landroidj/support/v4/print/PrintHelperKitkat;->access$100(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_80

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :try_start_2c
    invoke-virtual {v2, v1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-boolean v1, v1, Landroidj/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v1, :cond_82

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    :goto_43
    iget-object v5, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v8, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    invoke-static {v5, v6, v7, v1, v8}, Landroidj/support/v4/print/PrintHelperKitkat;->access$200(Landroidj/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-boolean v6, v6, Landroidj/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v6, :cond_bb

    :goto_59
    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z
    :try_end_69
    .catchall {:try_start_2c .. :try_end_69} :catchall_a6

    move-result v1

    if-eqz v1, :cond_ca

    :try_start_6c
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_71} :catch_80

    if-eqz v1, :cond_78

    :try_start_73
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_78} :catch_80

    :cond_78
    :goto_78
    :try_start_78
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v1, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_9

    :catch_80
    move-exception v0

    goto :goto_9

    :cond_82
    :try_start_82
    new-instance v5, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-object v1, v1, Landroidj/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v5, v1, v6}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v6

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    invoke-virtual {v5}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_a5
    .catchall {:try_start_82 .. :try_end_a5} :catchall_a6

    goto :goto_43

    :catchall_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_ac} :catch_80

    if-eqz v1, :cond_b3

    :try_start_ae
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_ed
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_80

    :cond_b3
    :goto_b3
    :try_start_b3
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v1, :cond_ba

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_ba
    throw v0
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_bb} :catch_80

    :cond_bb
    :try_start_bb
    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_59

    :cond_ca
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2, v1}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_d8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_a6

    :try_start_d8
    invoke-virtual {v2}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_dd} :catch_80

    if-eqz v1, :cond_e4

    :try_start_df
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e4} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e4} :catch_80

    :cond_e4
    :goto_e4
    :try_start_e4
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v3, v1, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_eb} :catch_80

    goto/16 :goto_9

    :catch_ed
    move-exception v1

    goto :goto_b3

    :catch_ef
    move-exception v1

    goto :goto_e4

    :catch_f1
    move-exception v1

    goto :goto_78
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat$2;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    :goto_d
    return-void

    :cond_e
    if-nez p1, :cond_1e

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    const/4 v2, 0x0

    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    goto :goto_d

    :cond_1e
    const-string v0, "PrintHelperKitkat"

    const-string v1, "Error writing printed content"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method
