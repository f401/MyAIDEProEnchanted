.class Landroidj/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final this$0:Landroidj/support/v4/print/PrintHelperKitkat;

.field final val$bitmap:Landroid/graphics/Bitmap;

.field final val$callback:Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final val$fittingMode:I

.field final val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidj/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 6

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    iput p3, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    iput-object p4, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v0}, Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    :cond_9
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    iput-object p2, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    :goto_1c
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->this$0:Landroidj/support/v4/print/PrintHelperKitkat;

    iget-object v1, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    iget-object v3, p0, Landroidj/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroidj/support/v4/print/PrintHelperKitkat;->access$000(Landroidj/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method
