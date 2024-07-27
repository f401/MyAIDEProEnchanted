.class Lcom/aide/ui/views/editor/va$e;
.super Lcom/aide/ui/views/editor/va$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final we:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xa010cdf9094d478L

    const-class v0, Lcom/aide/ui/views/editor/va$e;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2ae833a14cd29560L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->tp:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1438fedf880a8d60L    # -1.5125784897213933E211

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$e;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$d;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->EQ:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x1438fedf880a8d60L    # -1.5125784897213933E211

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$f;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1a88d6e50cf2ffcL
    .end annotation

    const-wide v2, -0x3203c0841e6c54d8L    # -4.759775892552908E67

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3203c0841e6c54d8L    # -4.759775892552908E67

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$e;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$d;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->EQ:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x292232f3d51b10edL
    .end annotation

    const-wide v2, -0x302885c602adf2fdL    # -4.24766043534693E76

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x302885c602adf2fdL    # -4.24766043534693E76

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/va$f;

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$e;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {v0, v1, p0}, Lcom/aide/ui/views/editor/va$f;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$e;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xecfa99d6f30c70L
    .end annotation

    const-wide v4, 0x63ea12d1e36267cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x63ea12d1e36267cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va$d;->VH:I

    iget v1, p0, Lcom/aide/ui/views/editor/va$d;->gn:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$e;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v0, v1, v2}, Lcom/aide/ui/views/editor/g;->j6(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$e;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x11972a5f4886ceb0L
    .end annotation

    const-wide v2, 0x200f78baa3c9e4c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$e;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x200f78baa3c9e4c0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$e;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
