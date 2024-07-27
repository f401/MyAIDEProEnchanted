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
        "Lcom/google/android/gms/internal/measurement/Fb",
        "<",
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
            "Lcom/google/android/gms/internal/measurement/wc",
            "<",
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

    const-class v0, Lcom/google/android/gms/internal/measurement/Q;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/Fb;)V

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
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/measurement/T;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/measurement/Q;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/Fb$b;

    sget-object v1, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/Fb$b;-><init>(Lcom/google/android/gms/internal/measurement/Fb;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/Q;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/measurement/Q;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/measurement/Q;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/measurement/Q;->zzauw:Lcom/google/android/gms/internal/measurement/Q;

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0002\u0001"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zznr"

    aput-object v4, v2, v3

    const-string v3, "zzauu"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzauv"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/measurement/Q$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/Q$a;-><init>(Lcom/google/android/gms/internal/measurement/T;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/Q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/Q;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
