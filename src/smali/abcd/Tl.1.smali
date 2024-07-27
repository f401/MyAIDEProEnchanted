.class public Labcd/Tl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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

.field public Hw:I

.field public VH:I

.field public Zo:I

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1df3f12882760bd0L

    const-class v0, Labcd/Tl;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5c520d4ebbdcc60L

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Tl;->FH:Ljava/lang/String;

    iput p2, p0, Labcd/Tl;->Hw:I

    iput p3, p0, Labcd/Tl;->v5:I

    iput p4, p0, Labcd/Tl;->Zo:I

    iput p5, p0, Labcd/Tl;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Tl;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x5c520d4ebbdcc60L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v2, -0x14d7db07ff970ed8L    # -1.550328047806067E208

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14d7db07ff970ed8L    # -1.550328047806067E208

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Tl;->Hw:I

    iget v1, p0, Labcd/Tl;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, 0x4c28bf00bcbcf58L

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_0

    const-wide v6, 0x4c28bf00bcbcf58L

    invoke-static {v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p0, p1, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v2, v5, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Labcd/Tl;

    move-object v2, v0

    iget v5, p0, Labcd/Tl;->VH:I

    iget v6, v2, Labcd/Tl;->VH:I

    if-eq v5, v6, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    iget v5, p0, Labcd/Tl;->Zo:I

    iget v6, v2, Labcd/Tl;->Zo:I

    if-eq v5, v6, :cond_5

    move v2, v4

    goto :goto_0

    :cond_5
    iget-object v5, p0, Labcd/Tl;->FH:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v5, v2, Labcd/Tl;->FH:Ljava/lang/String;

    if-eqz v5, :cond_7

    move v2, v4

    goto :goto_0

    :cond_6
    iget-object v5, p0, Labcd/Tl;->FH:Ljava/lang/String;

    iget-object v6, v2, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v2, v4

    goto :goto_0

    :cond_7
    iget v5, p0, Labcd/Tl;->v5:I

    iget v6, v2, Labcd/Tl;->v5:I

    if-eq v5, v6, :cond_8

    move v2, v4

    goto :goto_0

    :cond_8
    iget v5, p0, Labcd/Tl;->Hw:I

    iget v2, v2, Labcd/Tl;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v2, :cond_9

    move v2, v4

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_a

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    throw v2
.end method

.method public hashCode()I
    .registers 7

    const-wide v4, 0x1d0d1f69d3f06a55L    # 9.645932205056597E-169

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d0d1f69d3f06a55L    # 9.645932205056597E-169

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Tl;->VH:I

    iget v2, p0, Labcd/Tl;->Zo:I

    iget-object v0, p0, Labcd/Tl;->FH:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Labcd/Tl;->v5:I

    iget v4, p0, Labcd/Tl;->Hw:I

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v4

    return v0

    :cond_1
    iget-object v0, p0, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()Z
    .registers 5

    const-wide v2, 0x527503a96cbf863L    # 7.83898080278661E-284

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x527503a96cbf863L    # 7.83898080278661E-284

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Tl;->Hw:I

    iget v1, p0, Labcd/Tl;->Zo:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Labcd/Tl;->v5:I

    iget v1, p0, Labcd/Tl;->VH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Tl;)Z
    .registers 8

    const-wide v4, 0x33caf27537e0c98L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Tl;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x33caf27537e0c98L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Labcd/Tl;->FH:Ljava/lang/String;

    iget-object v2, p0, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p1, Labcd/Tl;->Hw:I

    iget v2, p0, Labcd/Tl;->Hw:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x2863471bab9e5500L

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2863471bab9e5500L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Tl;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Tl;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Tl;->Zo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Tl;->VH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
