.class public final enum Lcom/blankj/utilcode/util/ImageUtils$ImageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blankj/utilcode/util/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_JPG"

    const-string v2, "jpg"

    invoke-direct {v0, v1, v4, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_PNG"

    const-string v2, "png"

    invoke-direct {v0, v1, v5, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_GIF"

    const-string v2, "gif"

    invoke-direct {v0, v1, v6, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_TIFF"

    const-string v2, "tiff"

    invoke-direct {v0, v1, v7, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_BMP"

    const-string v2, "bmp"

    invoke-direct {v0, v1, v8, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_WEBP"

    const/4 v2, 0x5

    const-string v3, "webp"

    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_ICO"

    const/4 v2, 0x6

    const-string v3, "ico"

    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 2

    const-class v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v0
.end method

.method public static values()[Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 1

    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-object v0
.end method
