.class Lcom/aide/ui/build/java/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/f;->DW()V
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
.field final FH:Lcom/aide/ui/build/java/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/java/d;

    const-wide v2, 0xe65e2c46d3e3b4dL

    const-wide v4, 0x2c46ec2b5da9b750L    # 2.1463179621587846E-95

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/f;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/java/d;->FH:Lcom/aide/ui/build/java/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x21e4362cb97e76b0L
    .end annotation

    const-wide v2, 0x118a8797bb68c1f8L    # 3.58364438405365E-224

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x118a8797bb68c1f8L    # 3.58364438405365E-224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/java/d;->FH:Lcom/aide/ui/build/java/f;

    iget-object v0, v0, Lcom/aide/ui/build/java/f;->v5:Lcom/aide/ui/build/java/h;

    const-string v1, "Packaging was interrupted!"

    invoke-static {v0, v1}, Lcom/aide/ui/build/java/h;->j6(Lcom/aide/ui/build/java/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
