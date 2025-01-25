.class public Labcd/Be$d;
.super Labcd/Be$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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

.field public u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Be$d;

    const-wide v1, -0x8a73a3ebbc30d73L  # -7.987772122756118E266

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x22ec70a7f9b1ca85L  # -2.3293001045068126E140

    :try_start_6
    sget-boolean v3, Labcd/Be$d;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Be$b;-><init>(I)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Be$d;->VH:Z

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x22f159327d2cdd68L

    :try_start_5
    sget-boolean v2, Labcd/Be$d;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Be$d;->gn:Ljava/lang/String;

    if-nez v2, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    invoke-static {p1, v2}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object p1

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Be$d;->VH:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
