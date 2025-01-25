.class public final Lcom/google/android/gms/internal/measurement/Q;
.super Lcom/google/android/gms/internal/measurement/Fb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/nc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/Q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Fb<",
        "Lcom/google/android/gms/internal/measurement/Q;",
        "Lcom/google/android/gms/internal/measurement/Q$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/nc;"
    }
.end annotation


# static fields
.field private static final zzauw:Lcom/google/android/gms/internal/measurement/Q;

.field private static volatile zznw:Lcom/google/android/gms/internal/measurement/wc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/wc<",
            "Lcom/google/android/gms/internal/measurement/Q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzauu:Ljava/lang/String;

.field private zzauv:J

.field private zznr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/Q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    const-class v1, Lcom/google/android/gms/internal/measurement/Q;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/Fb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/Q;->zzauu:Ljava/lang/String;

    return-void
.end method

.method static synthetic EQ()Lcom/google/android/gms/internal/measurement/Q;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    return-object v0
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/measurement/T;->j6:[I

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/measurement/Q;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/measurement/Fb$b;

    sget-object p2, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/Fb$b;-><init>(Lcom/google/android/gms/internal/measurement/Fb;)V

    sput-object p1, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/measurement/Q;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/measurement/Q;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\u0002\u0001"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zznr"

    aput-object v2, v0, v1

    const-string v1, "zzauu"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzauv"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_51  #0x2
    new-instance p1, Lcom/google/android/gms/internal/measurement/Q$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/Q$a;-><init>(Lcom/google/android/gms/internal/measurement/T;)V

    return-object p1

    :pswitch_57  #0x1
    new-instance p1, Lcom/google/android/gms/internal/measurement/Q;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/Q;-><init>()V

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
