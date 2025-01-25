.class Lcom/aide/ui/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/views/editor/g$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor$a;->DW(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/ui/AIDEEditor$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1cfb6d6a69ea43fL  # -6.81654732287768E299

    const-wide v2, 0x12b23c9f95ab75e5L  # 1.291552402723696E-218

    const-class v4, Lcom/aide/ui/E;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/E;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/ui/views/editor/g;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x5728990cf1d3983bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/E;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x859271a58d2b6e4L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/E;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    iget-object v0, p0, Lcom/aide/ui/E;->FH:Lcom/aide/ui/AIDEEditor$a;

    iget-object v0, v0, Lcom/aide/ui/AIDEEditor$a;->vJ:Lcom/aide/ui/AIDEEditor;

    invoke-static {v0}, Lcom/aide/ui/AIDEEditor;->v5(Lcom/aide/ui/AIDEEditor;)Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->g3()V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/E;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x859271a58d2b6e4L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method
