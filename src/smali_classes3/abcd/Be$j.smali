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
    .registers 3

    const-class v0, Labcd/Be$j;

    const-wide v1, 0x167a519f7e7ab26fL  # 2.148966469885749E-200

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Be;)V
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    const-wide v2, -0x1c6b7a57203ea543L  # -4.956778541405658E171

    :try_start_8
    sget-boolean v4, Labcd/Be$j;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    iput-object p1, p0, Labcd/Be$j;->VH:Labcd/Be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/Be$j;->FH:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$j;->Hw:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$j;->v5:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$j;->Zo:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v4, Labcd/Be$j;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v0, v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x7fcdc5b344c10L

    :try_start_5
    sget-boolean v2, Labcd/Be$j;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Be$j;->VH:Labcd/Be;

    iget-object v2, v2, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    invoke-static {v2}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Labcd/Be$j;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Be$j;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
