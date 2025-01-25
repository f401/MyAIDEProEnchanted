.class public final Lcom/google/android/gms/internal/ads/js;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/js$a;,
        Lcom/google/android/gms/internal/ads/js$b;,
        Lcom/google/android/gms/internal/ads/js$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/js;",
        "Lcom/google/android/gms/internal/ads/js$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/js;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfhq:Lcom/google/android/gms/internal/ads/js;


# instance fields
.field private zzccg:I

.field private zzfhi:I

.field private zzfhp:Lcom/google/android/gms/internal/ads/ou;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ou<",
            "Lcom/google/android/gms/internal/ads/js$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/js;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/js;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    const-class v1, Lcom/google/android/gms/internal/ads/js;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/hu;->tp()Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js;->zzfhp:Lcom/google/android/gms/internal/ads/ou;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/js;->zzfhi:I

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/ads/js$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/js;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/js$a;

    return-object v0
.end method

.method static synthetic J0()Lcom/google/android/gms/internal/ads/js;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/js$b;)V
    .registers 4

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->zzfhp:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ou;->j3()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->zzfhp:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0xa

    goto :goto_17

    :cond_15
    shl-int/lit8 v1, v1, 0x1

    :goto_17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ou;->j6(I)Lcom/google/android/gms/internal/ads/ou;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/js;->zzfhp:Lcom/google/android/gms/internal/ads/ou;

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/js;->zzfhp:Lcom/google/android/gms/internal/ads/ou;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/js;Lcom/google/android/gms/internal/ads/js$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/js;->j6(Lcom/google/android/gms/internal/ads/js$b;)V

    return-void
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
    sget-object p1, Lcom/google/android/gms/internal/ads/js;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/js;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/js;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/js;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/js;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/js;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/js;->zzfhq:Lcom/google/android/gms/internal/ads/js;

    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzccg"

    aput-object v2, v0, v1

    const-string v1, "zzfhi"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfhp"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-class v1, Lcom/google/android/gms/internal/ads/js$b;

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/js$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/js$a;-><init>(Lcom/google/android/gms/internal/ads/ks;)V

    return-object p1

    :pswitch_5c  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/js;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/js;-><init>()V

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
