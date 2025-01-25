.class public Labcd/Be$h;
.super Labcd/Be$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
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

    const-class v0, Labcd/Be$h;

    const-wide v1, -0x96a3d830e153bcL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x241903ea11478104L  # 8.604140609325229E-135

    :try_start_6
    sget-boolean v3, Labcd/Be$h;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/Be$b;-><init>(I)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Be$h;->VH:Z

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public j6(Ljava/lang/String;Labcd/Je;)Ljava/lang/String;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Be$h;->Zo:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x639e3a2f37e1bd2cL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Be$h;->gn:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Labcd/Je;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v0

    sget-boolean v1, Labcd/Be$h;->VH:Z

    if-eqz v1, :cond_24

    const-wide v2, -0x639e3a2f37e1bd2cL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method
