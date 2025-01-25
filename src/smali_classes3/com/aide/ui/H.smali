.class Lcom/aide/ui/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/AIDEEditor$a;->FH(Ljava/util/List;)V
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

    const-wide v2, 0x12b39fc4b2a79400L

    const-class v4, Lcom/aide/ui/H;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/AIDEEditor$a;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/H;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf3cefbc0be217d5L
    .end annotation

    const-wide v0, 0x589f71247e7867fdL  # 7.9288091204817295E118

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/H;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/H;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;II)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/H;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
