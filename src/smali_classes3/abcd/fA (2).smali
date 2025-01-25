.class public Labcd/fA;
.super Ljava/lang/Object;


# instance fields
.field public final DW:I

.field public final FH:I

.field public final Hw:I

.field public final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/fA;->j6:Ljava/lang/String;

    iput p2, p0, Labcd/fA;->DW:I

    iput p3, p0, Labcd/fA;->FH:I

    iput p4, p0, Labcd/fA;->Hw:I

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)Labcd/fA;
    .registers 7

    const-string v0, "Fabric"

    if-eqz p1, :cond_43

    :try_start_4
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/i;->Hw(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon resource ID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    new-instance p0, Labcd/fA;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, v1, v3, v2}, Labcd/fA;-><init>(Ljava/lang/String;III)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_44

    :catch_39
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v1, "Failed to load icon"

    invoke-interface {p1, v0, v1, p0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    const/4 p0, 0x0

    :goto_44
    return-object p0
.end method
