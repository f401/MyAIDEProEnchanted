.class Lcom/aide/ui/preferences/AboutActivity$a;
.super Ljava/lang/RuntimeException;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/preferences/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final FH:Lcom/aide/ui/preferences/AboutActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/preferences/AboutActivity$a;

    const-wide v1, 0x4d6102fd851f4c90L  # 5.59855969247285E64

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/preferences/AboutActivity;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x52a49ce791a40689L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/AboutActivity$a;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x278db4ff1d76e388L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/preferences/AboutActivity$a;->FH:Lcom/aide/ui/preferences/AboutActivity;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/AboutActivity$a;->DW:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x278db4ff1d76e388L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method
