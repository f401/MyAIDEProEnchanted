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
        "Ljava/lang/Enum",
        "<",
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
            "Lcom/google/android/gms/internal/ads/lu",
            "<",
            "Lcom/google/android/gms/internal/ads/fG$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final J8:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "AD_FORMAT_TYPE_UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->j6:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->DW:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->FH:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "NATIVE_EXPRESS"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->Hw:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "NATIVE_CONTENT"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->v5:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "NATIVE_APP_INSTALL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->Zo:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "NATIVE_CUSTOM_TEMPLATE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->VH:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "DFP_BANNER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->gn:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "DFP_INTERSTITIAL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->u7:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "REWARD_BASED_VIDEO_AD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->tp:Lcom/google/android/gms/internal/ads/fG$a;

    new-instance v0, Lcom/google/android/gms/internal/ads/fG$a;

    const-string v1, "BANNER_SEARCH_ADS"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/fG$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->EQ:Lcom/google/android/gms/internal/ads/fG$a;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/fG$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/fG$a;->j6:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/fG$a;->DW:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/fG$a;->FH:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/fG$a;->Hw:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/fG$a;->v5:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->Zo:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->VH:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->gn:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->u7:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->tp:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/fG$a;->EQ:Lcom/google/android/gms/internal/ads/fG$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/fG$a;->J0:[Lcom/google/android/gms/internal/ads/fG$a;

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
    .registers 2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->EQ:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->tp:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->u7:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->gn:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->VH:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->Zo:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->v5:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->Hw:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->FH:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->DW:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/google/android/gms/internal/ads/fG$a;->j6:Lcom/google/android/gms/internal/ads/fG$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
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
