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
    .registers 6

    const-class v0, Lcom/aide/ui/H;

    const-wide v2, -0x1cfb6d6a69ea43fL    # -6.81654732287768E299

    const-wide v4, 0x12b39fc4b2a79400L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xf3cefbc0be217d5L
    .end annotation

    const-wide v4, 0x589f71247e7867fdL    # 7.9288091204817295E118

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/H;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x589f71247e7867fdL    # 7.9288091204817295E118

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/H;->FH:Lcom/aide/ui/AIDEEditor$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aide/ui/H;->FH:Lcom/aide/ui/AIDEEditor$a;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/aide/ui/AIDEEditor$a;->j6(Lcom/aide/ui/AIDEEditor$a;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/H;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
