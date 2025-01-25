.class public final Lcom/google/android/gms/internal/ads/js$b;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/js$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/js$b;",
        "Lcom/google/android/gms/internal/ads/js$b$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/js$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfhr:Lcom/google/android/gms/internal/ads/js$b;


# instance fields
.field private zzfgk:Ljava/lang/String;

.field private zzfhb:I

.field private zzfhm:I

.field private zzfhn:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/js$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/js$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    const-class v1, Lcom/google/android/gms/internal/ads/js$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js$b;->zzfgk:Ljava/lang/String;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/js$b;->zzfhn:I

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/js$b$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/js$b;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/js$b$a;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/js$b;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/as;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/as;->DW()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/js$b;->zzfhm:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js$b;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js$b;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js$b;Lcom/google/android/gms/internal/ads/as;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js$b;->j6(Lcom/google/android/gms/internal/ads/as;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js$b;Lcom/google/android/gms/internal/ads/ts;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js$b;->j6(Lcom/google/android/gms/internal/ads/ts;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js$b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js$b;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/ts;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ts;->DW()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/js$b;->zzfhb:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/js$b;->zzfgk:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/ks;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_62

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10  #0x7
    return-object p2

    :pswitch_11  #0x6
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_16  #0x5
    sget-object p1, Lcom/google/android/gms/internal/ads/js$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/js$b;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/js$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/js$b;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/js$b;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/js$b;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/js$b;->zzfhr:Lcom/google/android/gms/internal/ads/js$b;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfgk"

    aput-object v2, v0, v1

    const-string v1, "zzfhm"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfhn"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-string v1, "zzfhb"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/js$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/js$b$a;-><init>(Lcom/google/android/gms/internal/ads/ks;)V

    return-object p1

    :pswitch_5c  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/js$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/js$b;-><init>()V

    return-object p1

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_56  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
