.class public final enum Lcom/google/android/gms/internal/ads/fG$a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ku;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/fG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/fG$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ku;"
    }
.end annotation


# static fields
.field private static final enum DW:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum EQ:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum FH:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum Hw:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final J0:[Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum VH:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum Zo:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum gn:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum j6:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum tp:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum u7:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final enum v5:Lcom/google/android/gms/internal/ads/fG$a;

.field private static final we:Lcom/google/android/gms/internal/ads/lu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/lu<",
            "Lcom/google/android/gms/internal/ads/fG$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final J8:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->j6:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v1, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/ads/fG$a;->DW:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v3, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/ads/fG$a;->FH:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v5, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v7, "NATIVE_EXPRESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/ads/fG$a;->Hw:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v7, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v9, "NATIVE_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/ads/fG$a;->v5:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v9, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v11, "NATIVE_APP_INSTALL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/ads/fG$a;->Zo:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v11, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v13, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/ads/fG$a;->VH:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v13, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v15, "DFP_BANNER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/ads/fG$a;->gn:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v15, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v14, "DFP_INTERSTITIAL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/ads/fG$a;->u7:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v14, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v12, "REWARD_BASED_VIDEO_AD"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/ads/fG$a;->tp:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v12, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v10, "BANNER_SEARCH_ADS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/ads/fG$a;->EQ:Lcom/google/android/gms/internal/ads/fG$a;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/google/android/gms/internal/ads/fG$a;->J0:[Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/BG;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/BG;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->we:Lcom/google/android/gms/internal/ads/lu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/fG$a;->J8:I

    return-void
.end method

.method public static Hw()Lcom/google/android/gms/internal/ads/mu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/CG;->j6:Lcom/google/android/gms/internal/ads/mu;

    return-object v0
.end method

.method public static j6(I)Lcom/google/android/gms/internal/ads/fG$a;
    .registers 1

    packed-switch p0, :pswitch_data_26

    const/4 p0, 0x0

    return-object p0

    :pswitch_5  #0xa
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->EQ:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_8  #0x9
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->tp:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_b  #0x8
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->u7:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_e  #0x7
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->gn:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_11  #0x6
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->VH:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_14  #0x5
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->Zo:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_17  #0x4
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->v5:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_1a  #0x3
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->Hw:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_1d  #0x2
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->FH:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_20  #0x1
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->DW:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_23  #0x0
    sget-object p0, Lcom/google/android/gms/internal/ads/fG$a;->j6:Lcom/google/android/gms/internal/ads/fG$a;

    return-object p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_11  #00000006
        :pswitch_e  #00000007
        :pswitch_b  #00000008
        :pswitch_8  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/fG$a;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->J0:[Lcom/google/android/gms/internal/ads/fG$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/fG$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/fG$a;

    return-object v0
.end method


# virtual methods
.method public final DW()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/fG$a;->J8:I

    return v0
.end method
