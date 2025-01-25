.class public final Lcom/google/android/gms/internal/ads/hr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/hr;",
        "Lcom/google/android/gms/internal/ads/hr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/hr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfej:Lcom/google/android/gms/internal/ads/hr;


# instance fields
.field private zzfea:I

.field private zzfeh:Lcom/google/android/gms/internal/ads/lr;

.field private zzfei:Lcom/google/android/gms/internal/ads/yt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    const-class v1, Lcom/google/android/gms/internal/ads/hr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/hr;->zzfea:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static QX()Lcom/google/android/gms/internal/ads/hr$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/hr;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/hr$a;

    return-object v0
.end method

.method public static XL()Lcom/google/android/gms/internal/ads/hr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    return-object v0
.end method

.method static synthetic aM()Lcom/google/android/gms/internal/ads/hr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/hr;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hr;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hr;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hr;Lcom/google/android/gms/internal/ads/lr;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hr;->j6(Lcom/google/android/gms/internal/ads/lr;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hr;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/lr;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hr;->zzfeh:Lcom/google/android/gms/internal/ads/lr;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hr;->zzfea:I

    return v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/lr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->zzfeh:Lcom/google/android/gms/internal/ads/lr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/lr;->J0()Lcom/google/android/gms/internal/ads/lr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/ir;->j6:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/hr;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/hr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/hr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/hr;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/hr;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/hr;->zzfej:Lcom/google/android/gms/internal/ads/hr;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfea"

    aput-object v2, v0, v1

    const-string v1, "zzfeh"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfei"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_51  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/hr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hr$a;-><init>(Lcom/google/android/gms/internal/ads/ir;)V

    return-object p1

    :pswitch_57  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/hr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hr;-><init>()V

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
