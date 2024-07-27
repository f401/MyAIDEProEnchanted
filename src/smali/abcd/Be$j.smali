.class public Labcd/Be$j;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
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
.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field final VH:Labcd/Be;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public Zo:Ljava/lang/String;

.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x167a519f7e7ab26fL    # 2.148966469885749E-200

    const-class v0, Labcd/Be$j;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Be;)V
    .registers 8

    const-wide v4, -0x1c6b7a57203ea543L    # -4.956778541405658E171

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Be$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c6b7a57203ea543L    # -4.956778541405658E171

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Be$j;->VH:Labcd/Be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$j;->FH:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$j;->Hw:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$j;->v5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$j;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x7fcdc5b344c10L

    :try_start_0
    sget-boolean v0, Labcd/Be$j;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fcdc5b344c10L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Be$j;->VH:Labcd/Be;

    iget-object v0, v0, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Be$j;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$j;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
