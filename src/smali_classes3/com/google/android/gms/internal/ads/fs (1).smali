.class public final Lcom/google/android/gms/internal/ads/fs;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/fs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/hu<",
        "Lcom/google/android/gms/internal/ads/fs;",
        "Lcom/google/android/gms/internal/ads/fs$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# static fields
.field private static volatile zzcas:Lcom/google/android/gms/internal/ads/Zu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Zu<",
            "Lcom/google/android/gms/internal/ads/fs;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzfhh:Lcom/google/android/gms/internal/ads/fs;


# instance fields
.field private zzfgk:Ljava/lang/String;

.field private zzfhd:Ljava/lang/String;

.field private zzfhe:I

.field private zzfhf:Z

.field private zzfhg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    const-class v1, Lcom/google/android/gms/internal/ads/fs;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/hu;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-void
.end method

.method private final DW(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhe:I

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private final DW(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private final FH(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static aM()Lcom/google/android/gms/internal/ads/fs$a;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    sget v1, Lcom/google/android/gms/internal/ads/hu$e;->v5:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/fs;->j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fs$a;

    return-object v0
.end method

.method static synthetic j3()Lcom/google/android/gms/internal/ads/fs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->DW(I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/fs;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fs;->j6(Z)V

    return-void
.end method

.method private final j6(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhf:Z

    return-void
.end method


# virtual methods
.method public final EQ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfgk:Ljava/lang/String;

    return-object v0
.end method

.method public final J0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhd:Ljava/lang/String;

    return-object v0
.end method

.method public final QX()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhf:Z

    return v0
.end method

.method public final Ws()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhe:I

    return v0
.end method

.method public final XL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fs;->zzfhg:Ljava/lang/String;

    return-object v0
.end method

.method protected final j6(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object p2, Lcom/google/android/gms/internal/ads/gs;->j6:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_68

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
    sget-object p1, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_33

    const-class p1, Lcom/google/android/gms/internal/ads/fs;

    monitor-enter p1

    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    if-nez p1, :cond_2a

    new-instance p1, Lcom/google/android/gms/internal/ads/hu$b;

    sget-object p2, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/hu$b;-><init>(Lcom/google/android/gms/internal/ads/hu;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/fs;->zzcas:Lcom/google/android/gms/internal/ads/Zu;

    :cond_2a
    const-class p2, Lcom/google/android/gms/internal/ads/fs;

    monitor-exit p2

    goto :goto_33

    :catchall_2e
    move-exception p1

    const-class p2, Lcom/google/android/gms/internal/ads/fs;

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_2e

    throw p1

    :cond_33
    :goto_33
    return-object p1

    :pswitch_34  #0x4
    sget-object p1, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    return-object p1

    :pswitch_37  #0x3
    sget-object p1, Lcom/google/android/gms/internal/ads/fs;->zzfhh:Lcom/google/android/gms/internal/ads/fs;

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u000b\u0004\u0007\u0005Ȉ"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "zzfhd"

    aput-object v2, v0, v1

    const-string v1, "zzfgk"

    aput-object v1, v0, p3

    const/4 p3, 0x2

    const-string v1, "zzfhe"

    aput-object v1, v0, p3

    const/4 p3, 0x3

    const-string v1, "zzfhf"

    aput-object v1, v0, p3

    const/4 p3, 0x4

    const-string v1, "zzfhg"

    aput-object v1, v0, p3

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/hu;->j6(Lcom/google/android/gms/internal/ads/Pu;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5b  #0x2
    new-instance p1, Lcom/google/android/gms/internal/ads/fs$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/fs$a;-><init>(Lcom/google/android/gms/internal/ads/gs;)V

    return-object p1

    :pswitch_61  #0x1
    new-instance p1, Lcom/google/android/gms/internal/ads/fs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/fs;-><init>()V

    return-object p1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_61  #00000001
        :pswitch_5b  #00000002
        :pswitch_37  #00000003
        :pswitch_34  #00000004
        :pswitch_16  #00000005
        :pswitch_11  #00000006
        :pswitch_10  #00000007
    .end packed-switch
.end method
