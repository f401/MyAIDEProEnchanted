.class public final Lcom/google/android/gms/internal/ads/Kr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Kr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/Kr;",
        "Lcom/google/android/gms/internal/ads/Kr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/Kr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzffn:Lcom/google/android/gms/internal/ads/Kr;


# instance fields
.field private zzfea:I

.field private zzffd:Lcom/google/android/gms/internal/ads/Gr;

.field private zzffl:Lcom/google/android/gms/internal/ads/yt;

.field private zzffm:Lcom/google/android/gms/internal/ads/yt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Kr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Kr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    const-class v1, Lcom/google/android/gms/internal/ads/Kr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffl:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffm:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kr;->zzfea:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kr;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffm:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final FH(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffl:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static XL()Lcom/google/android/gms/internal/ads/Kr$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Kr;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Kr$a;

    return-object v0
.end method

.method public static aM()Lcom/google/android/gms/internal/ads/Kr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    return-object v0
.end method

.method static synthetic j3()Lcom/google/android/gms/internal/ads/Kr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Kr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/Kr;

    return-object p0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Gr;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffd:Lcom/google/android/gms/internal/ads/Gr;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kr;I)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kr;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/Gr;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kr;->j6(Lcom/google/android/gms/internal/ads/Gr;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Kr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Kr;->FH(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzfea:I

    return v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Gr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffd:Lcom/google/android/gms/internal/ads/Gr;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/Gr;->QX()Lcom/google/android/gms/internal/ads/Gr;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final QX()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffm:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kr;->zzffl:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/Lr;->j6:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/Kr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/Kr;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/Kr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/Kr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/Kr;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/Kr;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/Kr;->zzffn:Lcom/google/android/gms/internal/ads/Kr;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfea"

    aput-object v2, v0, v1

    const-string v1, "zzffd"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzffl"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-string v1, "zzffm"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_56  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/Kr$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Kr$a;-><init>(Lcom/google/android/gms/internal/ads/Lr;)V

    return-object p1

    :pswitch_5c  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/Kr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Kr;-><init>()V

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
