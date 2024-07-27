.class Labcd/pl;
.super Lcom/aide/engine/service/w$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ul;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Labcd/ul;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/pl;

    const-wide v2, -0x5917a8cc0b184c5L

    const-wide v4, 0xa318371ec722b40L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ul;)V
    .registers 2

    iput-object p1, p0, Labcd/pl;->v5:Labcd/ul;

    invoke-direct {p0}, Lcom/aide/engine/service/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e84b296524746a7L
    .end annotation

    const-wide v2, -0x3a7c6f8beb7b850L    # -9.442338807143173E290

    :try_start_0
    sget-boolean v0, Labcd/pl;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a7c6f8beb7b850L    # -9.442338807143173E290

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pl;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public br()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7c06853078f6ebdL
    .end annotation

    const-wide v2, -0x1335f899cf11cf20L    # -1.1216123287914667E216

    :try_start_0
    sget-boolean v0, Labcd/pl;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1335f899cf11cf20L    # -1.1216123287914667E216

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pl;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63d8b933cb8c2eb0L
    .end annotation

    const-wide v2, 0x3fa5ea2ff0aa9943L    # 0.04280233204672126

    :try_start_0
    sget-boolean v0, Labcd/pl;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fa5ea2ff0aa9943L    # 0.04280233204672126

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/pl;->v5:Labcd/ul;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/ul;->j6(Labcd/ul;Z)Z

    iget-object v0, p0, Labcd/pl;->v5:Labcd/ul;

    invoke-static {v0, p1}, Labcd/ul;->j6(Labcd/ul;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Labcd/pl;->v5:Labcd/ul;

    invoke-static {v0}, Labcd/ul;->Hw(Labcd/ul;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/pl;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
