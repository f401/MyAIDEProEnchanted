.class Landroidj/support/v4/print/PrintHelperKitkat$3$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/print/PrintHelperKitkat$3;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

.field final val$cancellationSignal:Landroid/os/CancellationSignal;

.field final val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

.field final val$newPrintAttributes:Landroid/print/PrintAttributes;

.field final val$oldPrintAttributes:Landroid/print/PrintAttributes;


# direct methods
.method constructor <init>(Landroidj/support/v4/print/PrintHelperKitkat$3;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V
    .registers 6

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iput-object p2, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    iput-object p5, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget-object v0, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget-object v1, v1, Landroidj/support/v4/print/PrintHelperKitkat$3;->val$imageFile:Landroid/net/Uri;

    const/16 v2, 0xdac

    invoke-static {v0, v1, v2}, Landroidj/support/v4/print/PrintHelperKitkat;->access$400(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_48

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget-object v0, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-boolean v0, v0, Landroidj/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget-object v0, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget v0, v0, Landroidj/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v0, :cond_48

    :cond_18
    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    invoke-static {v0}, Landroidj/support/v4/print/PrintHelperKitkat$3;->access$500(Landroidj/support/v4/print/PrintHelperKitkat$3;)Landroid/print/PrintAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_77

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/print/PrintAttributes$MediaSize;->isPortrait()Z

    move-result v0

    invoke-static {p1}, Landroidj/support/v4/print/PrintHelperKitkat;->access$600(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eq v0, v2, :cond_48

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_48
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iput-object p1, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7a

    new-instance v0, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iget-object v2, v2, Landroidj/support/v4/print/PrintHelperKitkat$3;->val$jobName:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v0

    iget-object v2, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$newPrintAttributes:Landroid/print/PrintAttributes;

    iget-object v3, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$oldPrintAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v2, v3}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    :goto_6d
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v1, v0, v6}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    :goto_72
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    iput-object v7, v0, Landroidj/support/v4/print/PrintHelperKitkat$3;->mLoadBitmap:Landroid/os/AsyncTask;

    return-void

    :catchall_77
    move-exception v0

    :try_start_78
    monitor-exit p0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v0

    :cond_7a
    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$layoutResultCallback:Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    invoke-virtual {v0, v7}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;)V

    goto :goto_72

    :cond_80
    move v6, v1

    goto :goto_6d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;

    invoke-direct {v1, p0}, Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;-><init>(Landroidj/support/v4/print/PrintHelperKitkat$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method
