.class public final Lcom/google/android/gms/internal/ads/hs;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/hs$a;,
        Lcom/google/android/gms/internal/ads/hs$b;,
        Lcom/google/android/gms/internal/ads/hs$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/hs;",
        "Lcom/google/android/gms/internal/ads/hs$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/hs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfhk:Lcom/google/android/gms/internal/ads/hs;


# instance fields
.field private zzccg:I

.field private zzfhi:I

.field private zzfhj:Lcom/google/android/gms/internal/ads/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ou<",
            "Lcom/google/android/gms/internal/ads/hs$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    const-class v1, Lcom/google/android/gms/internal/ads/hs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->tp()Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hs;->zzfhj:Lcom/google/android/gms/internal/ads/ou;

    return-void
.end method

.method static synthetic QX()Lcom/google/android/gms/internal/ads/hs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    return-object v0
.end method

.method public static j6([B)Lcom/google/android/gms/internal/ads/hs;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;[B)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/hs;

    return-object p0
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/hs;->zzfhi:I

    return v0
.end method

.method public final J0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/hs$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs;->zzfhj:Lcom/google/android/gms/internal/ads/ou;

    return-object v0
.end method

.method public final Ws()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hs;->zzfhj:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/is;->j6:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/hs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/hs;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/hs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/hs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/hs;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/hs;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/hs;->zzfhk:Lcom/google/android/gms/internal/ads/hs;

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzccg"

    aput-object v2, v0, v1

    const-string v1, "zzfhi"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfhj"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-class v1, Lcom/google/android/gms/internal/ads/hs$b;

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/hs$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hs$a;-><init>(Lcom/google/android/gms/internal/ads/is;)V

    return-object p1

    :pswitch_5c  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/hs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/hs;-><init>()V

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
