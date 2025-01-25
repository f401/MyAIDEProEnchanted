.class public Labcd/Be$g;
.super Labcd/Be$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
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
.field public EQ:Ljava/lang/String;

.field public gn:Ljava/lang/String;

.field public tp:Ljava/lang/String;

.field public u7:Ljava/lang/String;

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Be$g;

    const-wide v1, -0x1be138d939796600L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    const-wide v2, -0x451c9d76332aea0bL  # -5.010883124646904E-25

    :try_start_8
    sget-boolean v4, Labcd/Be$g;->Zo:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_f
    invoke-direct {p0, p1}, Labcd/Be$b;-><init>(I)V

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    const-string v4, "+"

    iput-object v4, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v4, Labcd/Be$g;->VH:Z

    if-eqz v4, :cond_2a

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, v1, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method public constructor <init>(Labcd/Be$g;Ljava/lang/String;)V
    .registers 10

    const-string v0, ""

    :try_start_2
    sget-boolean v1, Labcd/Be$g;->Zo:Z

    if-eqz v1, :cond_f

    const-wide v1, -0x11fad22c0c56616dL  # -9.569573609427781E221

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    iget v1, p1, Labcd/Be$f;->FH:I

    invoke-direct {p0, v1}, Labcd/Be$b;-><init>(I)V

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    const-string v1, "+"

    iput-object v1, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;

    iput-object p2, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->EQ:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Be$g;->VH:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x11fad22c0c56616dL  # -9.569573609427781E221

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const-wide v0, -0x30c252709b6c060L

    :try_start_5
    sget-boolean v2, Labcd/Be$g;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/Be$g;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Labcd/Be$g;

    iget-object v4, v2, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v2, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v2, v2, Labcd/Be$g;->EQ:Ljava/lang/String;

    iget-object v4, p0, Labcd/Be$g;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3f

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    return v3

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/Be$g;->VH:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public hashCode()I
    .registers 5

    const-wide v0, 0xec087d6b72d8dc1L

    :try_start_5
    sget-boolean v2, Labcd/Be$g;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1a

    add-int/2addr v2, v0

    return v2

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Be$g;->VH:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x14e7b5e0cc497f07L  # -7.798234499945229E207

    :try_start_5
    sget-boolean v2, Labcd/Be$g;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-object v0

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Be$g;->VH:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, ":"

    const-wide v1, 0x19fb6e8f26f24660L

    :try_start_7
    sget-boolean v3, Labcd/Be$g;->Zo:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v0

    sget-boolean v3, Labcd/Be$g;->VH:Z

    if-eqz v3, :cond_35

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v0
.end method
