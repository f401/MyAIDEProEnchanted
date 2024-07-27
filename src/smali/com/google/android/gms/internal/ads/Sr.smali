.class public final Lcom/google/android/gms/internal/ads/Sr;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/Sr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu",
        "<",
        "Lcom/google/android/gms/internal/ads/Sr;",
        "Lcom/google/android/gms/internal/ads/Sr$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu",
            "<",
            "Lcom/google/android/gms/internal/ads/Sr;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfgf:Lcom/google/android/gms/internal/ads/Sr;


# instance fields
.field private zzfea:I

.field private zzfei:Lcom/google/android/gms/internal/ads/yt;

.field private zzfge:Lcom/google/android/gms/internal/ads/Wr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Sr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Sr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    const-class v0, Lcom/google/android/gms/internal/ads/Sr;

    sget-object v1, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/yt;->j6:Lcom/google/android/gms/internal/ads/yt;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfea:I

    return-void
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/yt;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static QX()Lcom/google/android/gms/internal/ads/Sr$a;
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/Sr;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Sr$a;

    return-object v0
.end method

.method public static XL()Lcom/google/android/gms/internal/ads/Sr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    return-object v0
.end method

.method static synthetic aM()Lcom/google/android/gms/internal/ads/Sr;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    return-object v0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/Sr;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/hu;Lcom/google/android/gms/internal/ads/yt;)Lcom/google/android/gms/internal/ads/hu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Sr;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Sr;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Sr;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Sr;Lcom/google/android/gms/internal/ads/Wr;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Sr;->j6(Lcom/google/android/gms/internal/ads/Wr;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Sr;Lcom/google/android/gms/internal/ads/yt;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Sr;->DW(Lcom/google/android/gms/internal/ads/yt;)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Wr;)V
    .registers 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfge:Lcom/google/android/gms/internal/ads/Wr;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final EQ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfea:I

    return v0
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/yt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfei:Lcom/google/android/gms/internal/ads/yt;

    return-object v0
.end method

.method public final Ws()Lcom/google/android/gms/internal/ads/Wr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sr;->zzfge:Lcom/google/android/gms/internal/ads/Wr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Wr;->Ws()Lcom/google/android/gms/internal/ads/Wr;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x0

    const/4 v5, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/Tr;->j6:[I

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
    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_0

    const-class v0, Lcom/google/android/gms/internal/ads/Sr;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_1
    const-class v1, Lcom/google/android/gms/internal/ads/Sr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/ads/Sr;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/Sr;->zzfgf:Lcom/google/android/gms/internal/ads/Sr;

    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzfea"

    aput-object v4, v2, v3

    const-string v3, "zzfge"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "zzfei"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/ads/Sr$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/Sr$a;-><init>(Lcom/google/android/gms/internal/ads/Tr;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Sr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Sr;-><init>()V

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
