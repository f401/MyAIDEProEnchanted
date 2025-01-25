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
    .registers 5

    const-wide v0, -0x5917a8cc0b184c5L

    const-wide v2, 0xa318371ec722b40L

    const-class v4, Labcd/pl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x3a7c6f8beb7b850L  # -9.442338807143173E290

    :try_start_5
    sget-boolean v2, Labcd/pl;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pl;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public br()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x7c06853078f6ebdL
    .end annotation

    const-wide v0, -0x1335f899cf11cf20L  # -1.1216123287914667E216

    :try_start_5
    sget-boolean v2, Labcd/pl;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/pl;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x63d8b933cb8c2eb0L
    .end annotation

    const-wide v0, 0x3fa5ea2ff0aa9943L  # 0.04280233204672126

    :try_start_5
    sget-boolean v2, Labcd/pl;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/pl;->v5:Labcd/ul;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/ul;->j6(Labcd/ul;Z)Z

    iget-object v2, p0, Labcd/pl;->v5:Labcd/ul;

    invoke-static {v2, p1}, Labcd/ul;->j6(Labcd/ul;Ljava/util/List;)Ljava/util/List;

    iget-object v2, p0, Labcd/pl;->v5:Labcd/ul;

    invoke-static {v2}, Labcd/ul;->Hw(Labcd/ul;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/pl;->Hw:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method
