.class public Labcd/Be$m;
.super Labcd/Be$i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public gn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Be$m;

    const-wide v1, -0x6616fc7f9500e2dL  # -6.772313341855705E277

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Be$m;->Zo:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2149d181e44a2ea3L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1}, Labcd/Be$i;-><init>(I)V

    iput-object p2, p0, Labcd/Be$m;->gn:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/Be$m;->VH:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x2149d181e44a2ea3L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const-wide v0, 0x896fcf3c0cca8dL

    :try_start_5
    sget-boolean v2, Labcd/Be$m;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/Be$m;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    iget-object v2, p0, Labcd/Be$m;->gn:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Labcd/Be$m;

    iget-object v3, v3, Labcd/Be$m;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Be$m;->VH:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method
