.class Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/print/PrintHelper$PrintHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintHelperImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RealHelper:",
        "Landroidj/support/v4/print/PrintHelperKitkat;",
        ">",
        "Ljava/lang/Object;",
        "Landroidj/support/v4/print/PrintHelper$PrintHelperVersionImpl;"
    }
.end annotation


# instance fields
.field private final mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRealHelper;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidj/support/v4/print/PrintHelperKitkat;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRealHelper;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    return-void
.end method


# virtual methods
.method public getColorMode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroidj/support/v4/print/PrintHelperKitkat;->getColorMode()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroidj/support/v4/print/PrintHelperKitkat;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0}, Landroidj/support/v4/print/PrintHelperKitkat;->getScaleMode()I

    move-result v0

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    new-instance v0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$1;

    invoke-direct {v0, p0, p3}, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$1;-><init>(Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    :cond_8
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroidj/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    return-void
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    new-instance v0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;

    invoke-direct {v0, p0, p3}, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;-><init>(Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V

    :cond_8
    iget-object v1, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v1, p1, p2, v0}, Landroidj/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    return-void
.end method

.method public setColorMode(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/print/PrintHelperKitkat;->setColorMode(I)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/print/PrintHelperKitkat;->setOrientation(I)V

    return-void
.end method

.method public setScaleMode(I)V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->mPrintHelper:Landroidj/support/v4/print/PrintHelperKitkat;

    invoke-virtual {v0, p1}, Landroidj/support/v4/print/PrintHelperKitkat;->setScaleMode(I)V

    return-void
.end method
