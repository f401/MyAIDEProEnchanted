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
    .registers 3

    const-class v0, Labcd/Tl;

    const-wide v1, -0x1df3f12882760bd0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Tl;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5c520d4ebbdcc60L

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Tl;->FH:Ljava/lang/String;

    iput p2, p0, Labcd/Tl;->Hw:I

    iput p3, p0, Labcd/Tl;->v5:I

    iput p4, p0, Labcd/Tl;->Zo:I

    iput p5, p0, Labcd/Tl;->VH:I
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/Tl;->DW:Z

    if-eqz v1, :cond_54

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

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 5

    const-wide v0, -0x14d7db07ff970ed8L  # -1.550328047806067E208

    :try_start_5
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Tl;->Hw:I

    iget v0, p0, Labcd/Tl;->Zo:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-ne v2, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const-wide v0, 0x4c28bf00bcbcf58L

    :try_start_5
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    if-ne p0, p1, :cond_10

    return v2

    :cond_10
    const/4 v3, 0x0

    if-nez p1, :cond_14

    return v3

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1f

    return v3

    :cond_1f
    move-object v4, p1

    check-cast v4, Labcd/Tl;

    iget v5, p0, Labcd/Tl;->VH:I

    iget v6, v4, Labcd/Tl;->VH:I

    if-eq v5, v6, :cond_29

    return v3

    :cond_29
    iget v5, p0, Labcd/Tl;->Zo:I

    iget v6, v4, Labcd/Tl;->Zo:I

    if-eq v5, v6, :cond_30

    return v3

    :cond_30
    iget-object v5, p0, Labcd/Tl;->FH:Ljava/lang/String;

    if-nez v5, :cond_39

    iget-object v5, v4, Labcd/Tl;->FH:Ljava/lang/String;

    if-eqz v5, :cond_42

    return v3

    :cond_39
    iget-object v6, v4, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    return v3

    :cond_42
    iget v5, p0, Labcd/Tl;->v5:I

    iget v6, v4, Labcd/Tl;->v5:I

    if-eq v5, v6, :cond_49

    return v3

    :cond_49
    iget v5, p0, Labcd/Tl;->Hw:I

    iget p1, v4, Labcd/Tl;->Hw:I
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_51

    if-eq v5, p1, :cond_50

    return v3

    :cond_50
    return v2

    :catchall_51
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v2
.end method

.method public hashCode()I
    .registers 7

    const-wide v0, 0x1d0d1f69d3f06a55L  # 9.645932205056597E-169

    :try_start_5
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Tl;->VH:I

    iget v3, p0, Labcd/Tl;->Zo:I

    iget-object v4, p0, Labcd/Tl;->FH:Ljava/lang/String;

    if-nez v4, :cond_16

    const/4 v4, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1a
    iget v5, p0, Labcd/Tl;->v5:I

    iget v0, p0, Labcd/Tl;->Hw:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2d

    add-int/lit8 v2, v2, 0x1f

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    return v2

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public j6()Z
    .registers 5

    const-wide v0, 0x527503a96cbf863L  # 7.83898080278661E-284

    :try_start_5
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Tl;->Hw:I

    iget v3, p0, Labcd/Tl;->Zo:I

    if-ne v2, v3, :cond_1a

    iget v2, p0, Labcd/Tl;->v5:I

    iget v0, p0, Labcd/Tl;->VH:I
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    if-ne v2, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Labcd/Tl;)Z
    .registers 7

    const-wide v0, 0x33caf27537e0c98L

    :try_start_5
    sget-boolean v2, Labcd/Tl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Labcd/Tl;->FH:Ljava/lang/String;

    iget-object v3, p0, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    iget v2, p1, Labcd/Tl;->Hw:I

    iget v4, p0, Labcd/Tl;->Hw:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_27

    const/16 v0, 0x14

    if-ge p1, v0, :cond_26

    const/4 v3, 0x1

    :cond_26
    return v3

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, ","

    const-wide v1, 0x2863471bab9e5500L

    :try_start_7
    sget-boolean v3, Labcd/Tl;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Labcd/Tl;->Hw:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Labcd/Tl;->v5:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Labcd/Tl;->Zo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/Tl;->VH:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_46

    return-object v0

    :catchall_46
    move-exception v0

    sget-boolean v3, Labcd/Tl;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4e
    throw v0
.end method
