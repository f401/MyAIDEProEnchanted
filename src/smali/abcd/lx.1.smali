.class public final Labcd/lx;
.super Ljava/lang/Object;


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x0

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x2

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/lx;->LoadingImageView:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Labcd/lx;->SignInButton:[I

    return-void

    :array_0
    .array-data 4
        0x7f03011c
        0x7f030146
        0x7f030147
    .end array-data

    :array_1
    .array-data 4
        0x7f03011b
        0x7f03011d
        0x7f030148
    .end array-data
.end method
