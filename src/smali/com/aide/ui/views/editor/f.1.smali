.class Lcom/aide/ui/views/editor/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/g$f;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/g;->cn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/ui/views/editor/g;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/editor/f;

    const-wide v2, 0x9bc2c072ae09d4fL

    const-wide v4, 0x3871c11a0bdc9200L    # 8.348033474045887E-37

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/g;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x531bc9ae1a8e03a0L
    .end annotation

    const-wide v2, -0x107b9aef6c8b7a50L    # -1.5460581751687422E229

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x107b9aef6c8b7a50L    # -1.5460581751687422E229

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4dac3c503b6bb44bL
    .end annotation

    const-wide v2, 0x227c3f0e0221f70dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x227c3f0e0221f70dL

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x54a553e1de100f00L
    .end annotation

    const-wide v2, 0x3ff101d8298e6cd0L    # 1.0629502890868032

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff101d8298e6cd0L    # 1.0629502890868032

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x558aa30f2a9e35c4L
    .end annotation

    const-wide v2, 0x25a38e3a536a6f1cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25a38e3a536a6f1cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x347289fbc696d753L
    .end annotation

    const-wide v2, 0x1c596bb56ceb1127L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, 0x1c596bb56ceb1127L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/util/List;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x34f68f4e7dfe47acL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v4, -0x6e22d2921e54264cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6e22d2921e54264cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/va$j;

    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    iget-object v2, v2, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v0}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method
