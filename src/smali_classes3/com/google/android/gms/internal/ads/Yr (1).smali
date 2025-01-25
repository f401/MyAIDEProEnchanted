.class public final Lcom/google/android/gms/internal/ads/Yr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Yr$a;,
        Lcom/google/android/gms/internal/ads/Yr$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/Yr;",
        "Lcom/google/android/gms/internal/ads/Yr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/Yr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfgn:Lcom/google/android/gms/internal/ads/Yr;


# instance fields
.field private zzfgk:Ljava/lang/String;

.field private zzfgl:Lcom/google/android/gms/internal/ads/yt;

.field private zzfgm:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Yr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    const-class v1, Lcom/google/android/gms/internal/ads/Yr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method

.method public static QX()Lcom/google/android/gms/internal/ads/Yr$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Yr;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Yr$a;

    return-object v0
.end method

.method public static XL()Lcom/google/android/gms/internal/ads/Yr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method static synthetic aM()Lcom/google/android/gms/internal/ads/Yr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Yr$b;)V
    .registers 2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Yr$b;->DW()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgm:I

    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Lcom/google/android/gms/internal/ads/Yr$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Lcom/google/android/gms/internal/ads/Yr$b;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Yr;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Yr;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgk:Ljava/lang/String;

    return-object v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgl:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/Yr$b;
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Yr;->zzfgm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Yr$b;->j6(I)Lcom/google/android/gms/internal/ads/Yr$b;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/Yr$b;->Zo:Lcom/google/android/gms/internal/ads/Yr$b;

    :cond_a
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/Zr;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5e

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
    sget-object p1, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/Yr;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/Yr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/Yr;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/Yr;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/Yr;->zzfgn:Lcom/google/android/gms/internal/ads/Yr;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfgk"

    aput-object v2, v0, v1

    const-string v1, "zzfgl"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfgm"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_51  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/Yr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Yr$a;-><init>(Lcom/google/android/gms/internal/ads/Zr;)V

    return-object p1

    :pswitch_57  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/Yr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Yr;-><init>()V

    return-object p1

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_57  #00000001
        :pswitch_51  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
