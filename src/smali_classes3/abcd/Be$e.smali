.class public Labcd/Be$e;
.super Labcd/Be$i;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
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

    const-class v0, Labcd/Be$e;

    const-wide v1, 0x281da0cb6b949c70L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x2a556b79c89aab0L

    :try_start_6
    sget-boolean v3, Labcd/Be$e;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Be$i;-><init>(I)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Be$e;->VH:Z

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

    const-wide v0, 0x1549584adb7f7ddcL  # 3.947148154777677E-206

    :try_start_5
    sget-boolean v2, Labcd/Be$e;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Be$e;->gn:Ljava/lang/String;

    invoke-static {p1, v2}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Be$e;->VH:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method
