.class public abstract Labcd/vF;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/vF;

.field public static final FH:Labcd/BF;

.field public static final Hw:Labcd/BF;

.field public static final j6:Labcd/vF;

.field private static final v5:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Labcd/vF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Labcd/yF;

    const-string v1, "ours"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/yF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/vF;->j6:Labcd/vF;

    new-instance v1, Labcd/yF;

    const-string v2, "theirs"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Labcd/yF;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/vF;->DW:Labcd/vF;

    new-instance v2, Labcd/AF;

    invoke-direct {v2}, Labcd/AF;-><init>()V

    sput-object v2, Labcd/vF;->FH:Labcd/BF;

    new-instance v3, Labcd/zF;

    invoke-direct {v3}, Labcd/zF;-><init>()V

    sput-object v3, Labcd/vF;->Hw:Labcd/BF;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Labcd/vF;->v5:Ljava/util/HashMap;

    invoke-static {v0}, Labcd/vF;->j6(Labcd/vF;)V

    invoke-static {v1}, Labcd/vF;->j6(Labcd/vF;)V

    invoke-static {v2}, Labcd/vF;->j6(Labcd/vF;)V

    invoke-static {v3}, Labcd/vF;->j6(Labcd/vF;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Labcd/vF;)V
    .registers 2

    invoke-virtual {p0}, Labcd/vF;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Labcd/vF;->j6(Ljava/lang/String;Labcd/vF;)V

    return-void
.end method

.method public static j6(Ljava/lang/String;Labcd/vF;)V
    .registers 5

    const-class v0, Labcd/vF;

    monitor-enter v0

    :try_start_3
    sget-object v0, Labcd/vF;->v5:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    const-class p0, Labcd/vF;

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->mergeStrategyAlreadyExistsAsDefault:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    const-class p1, Labcd/vF;

    monitor-exit p1

    throw p0
.end method


# virtual methods
.method public abstract j6(Labcd/UE;)Labcd/wF;
.end method

.method public abstract j6()Ljava/lang/String;
.end method
