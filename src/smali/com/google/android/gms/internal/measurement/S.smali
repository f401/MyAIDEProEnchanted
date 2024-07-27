.class public final Lcom/google/android/gms/internal/measurement/S;
.super Lcom/google/android/gms/internal/measurement/Fb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/nc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/S$a;,
        Lcom/google/android/gms/internal/measurement/S$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Fb",
        "<",
        "Lcom/google/android/gms/internal/measurement/S;",
        "Lcom/google/android/gms/internal/measurement/S$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/nc;"
    }
.end annotation


# static fields
.field private static final zzauz:Lcom/google/android/gms/internal/measurement/S;

.field private static volatile zznw:Lcom/google/android/gms/internal/measurement/wc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/wc",
            "<",
            "Lcom/google/android/gms/internal/measurement/S;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaux:I

.field private zzauy:Lcom/google/android/gms/internal/measurement/Lb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/Lb",
            "<",
            "Lcom/google/android/gms/internal/measurement/Q;",
            ">;"
        }
    .end annotation
.end field

.field private zznr:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/S;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/S;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    const-class v0, Lcom/google/android/gms/internal/measurement/S;

    sget-object v1, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/Fb;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/Fb;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/S;->zzaux:I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/Fb;->tp()Lcom/google/android/gms/internal/measurement/Lb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/S;->zzauy:Lcom/google/android/gms/internal/measurement/Lb;

    return-void
.end method

.method public static EQ()Lcom/google/android/gms/internal/measurement/wc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/measurement/wc",
            "<",
            "Lcom/google/android/gms/internal/measurement/S;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    sget v1, Lcom/google/android/gms/internal/measurement/Fb$e;->VH:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/S;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/wc;

    return-object v0
.end method

.method static synthetic we()Lcom/google/android/gms/internal/measurement/S;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    return-object v0
.end method


# virtual methods
.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v0, 0x0

    const/4 v6, 0x1

    sget-object v1, Lcom/google/android/gms/internal/measurement/T;->j6:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_0
    :goto_0
    :pswitch_1
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/measurement/S;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/measurement/S;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/S;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/Fb$b;

    sget-object v1, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/Fb$b;-><init>(Lcom/google/android/gms/internal/measurement/Fb;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/S;->zznw:Lcom/google/android/gms/internal/measurement/wc;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/measurement/S;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/measurement/S;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/S$b;->Hw()Lcom/google/android/gms/internal/measurement/Kb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/S;->zzauz:Lcom/google/android/gms/internal/measurement/S;

    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000c\u0000\u0002\u001b"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "zznr"

    aput-object v5, v3, v4

    const-string v4, "zzaux"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v0, v3, v4

    const/4 v0, 0x3

    const-string v4, "zzauy"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-class v4, Lcom/google/android/gms/internal/measurement/Q;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/Fb;->j6(Lcom/google/android/gms/internal/measurement/lc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/measurement/S$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/S$a;-><init>(Lcom/google/android/gms/internal/measurement/T;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/S;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/S;-><init>()V

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
