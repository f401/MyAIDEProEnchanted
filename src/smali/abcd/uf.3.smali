.class Labcd/uf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/vf;->run()V
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
.field final FH:Labcd/vf;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/uf;

    const-wide v2, 0x1298307f917b3980L    # 4.282812849239566E-219

    const-wide v4, 0xcf9c4264a0bdd0cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/vf;)V
    .registers 2

    iput-object p1, p0, Labcd/uf;->FH:Labcd/vf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xb12e902239bc6adL
    .end annotation

    const-wide v2, -0x37438d157558c8fdL    # -2.478247955197775E42

    :try_start_0
    sget-boolean v0, Labcd/uf;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37438d157558c8fdL    # -2.478247955197775E42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/uf;->FH:Labcd/vf;

    iget-object v0, v0, Labcd/vf;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/uf;->FH:Labcd/vf;

    iget-object v1, v1, Labcd/vf;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V

    new-instance v1, Labcd/sf;

    invoke-direct {v1, p0, v0}, Labcd/sf;-><init>(Labcd/uf;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Labcd/tf;

    invoke-direct {v1, p0, v0}, Labcd/tf;-><init>(Labcd/uf;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/uf;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
