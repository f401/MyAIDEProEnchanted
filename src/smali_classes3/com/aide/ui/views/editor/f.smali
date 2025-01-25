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
    .registers 5

    const-wide v0, 0x9bc2c072ae09d4fL

    const-wide v2, 0x3871c11a0bdc9200L  # 8.348033474045887E-37

    const-class v4, Lcom/aide/ui/views/editor/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x107b9aef6c8b7a50L  # -1.5460581751687422E229

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public DW(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4dac3c503b6bb44bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x227c3f0e0221f70dL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x227c3f0e0221f70dL

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x54a553e1de100f00L
    .end annotation

    const-wide v0, 0x3ff101d8298e6cd0L  # 1.0629502890868032

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x558aa30f2a9e35c4L
    .end annotation

    const-wide v0, 0x25a38e3a536a6f1cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x347289fbc696d753L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x1c596bb56ceb1127L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x1c596bb56ceb1127L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x34f68f4e7dfe47acL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x6e22d2921e54264cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x0

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/va$j;

    iget-object v4, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v4}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v4

    iget-object v4, v4, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    if-ne v3, v4, :cond_32

    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/editor/g;->j6(Ljava/util/List;)V

    return-void

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_35
    iget-object v2, p0, Lcom/aide/ui/views/editor/f;->FH:Lcom/aide/ui/views/editor/g;

    invoke-static {v2}, Lcom/aide/ui/views/editor/g;->Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/aide/ui/views/editor/g$a;->Zo:Z
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    :cond_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/f;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method
