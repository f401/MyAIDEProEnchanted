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
    .registers 4

    const-wide v2, -0x1be138d939796600L

    const-class v0, Labcd/Be$g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, -0x451c9d76332aea0bL    # -5.010883124646904E-25

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Be$g;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x451c9d76332aea0bL    # -5.010883124646904E-25

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Be$b;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    const-string v0, "+"

    iput-object v0, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$g;->VH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Be$g;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0x11fad22c0c56616dL    # -9.569573609427781E221

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Be$g;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11fad22c0c56616dL    # -9.569573609427781E221

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p1, Labcd/Be$f;->FH:I

    invoke-direct {p0, v0}, Labcd/Be$b;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    const-string v0, "+"

    iput-object v0, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;

    iput-object p2, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->gn:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->u7:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v0, p1, Labcd/Be$g;->EQ:Ljava/lang/String;

    iput-object v0, p0, Labcd/Be$g;->EQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Be$g;->VH:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const-wide v6, -0x30c252709b6c060L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Be$g;->Zo:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x30c252709b6c060L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Labcd/Be$g;

    if-nez v2, :cond_1

    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Labcd/Be$g;

    move-object v2, v0

    iget-object v4, v2, Labcd/Be$g;->gn:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Labcd/Be$g;->u7:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v2, Labcd/Be$g;->tp:Ljava/lang/String;

    iget-object v5, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v2, v2, Labcd/Be$g;->EQ:Ljava/lang/String;

    iget-object v4, p0, Labcd/Be$g;->EQ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Be$g;->VH:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public hashCode()I
    .registers 5

    const-wide v2, 0xec087d6b72d8dc1L

    :try_start_0
    sget-boolean v0, Labcd/Be$g;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xec087d6b72d8dc1L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$g;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x14e7b5e0cc497f07L    # -7.798234499945229E207

    :try_start_0
    sget-boolean v0, Labcd/Be$g;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14e7b5e0cc497f07L    # -7.798234499945229E207

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$g;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x19fb6e8f26f24660L

    :try_start_0
    sget-boolean v0, Labcd/Be$g;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19fb6e8f26f24660L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Be$g;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Be$g;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Be$g;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Be$g;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
