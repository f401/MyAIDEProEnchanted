.class public Labcd/qa$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/qa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field public final FH:I

.field public final Hw:Z

.field public final VH:Labcd/na;

.field public final Zo:I

.field public final v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/qa$a;

    const-wide v1, 0x37e8674061ef0f0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/na;IZZI)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/qa$a;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1649a1708722498L  # -7.339321254261432E301

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/qa$a;->VH:Labcd/na;

    iput p2, p0, Labcd/qa$a;->FH:I

    iput-boolean p3, p0, Labcd/qa$a;->Hw:Z

    iput-boolean p4, p0, Labcd/qa$a;->v5:Z

    iput p5, p0, Labcd/qa$a;->Zo:I
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/qa$a;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, -0x1649a1708722498L  # -7.339321254261432E301

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method


# virtual methods
.method public j6(I)Labcd/qa$a;
    .registers 11

    const-wide v0, -0x4dfbd5a65746a3bcL  # -9.34971739648091E-68

    :try_start_5
    sget-boolean v2, Labcd/qa$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Labcd/qa$a;

    iget-object v4, p0, Labcd/qa$a;->VH:Labcd/na;

    iget v3, p0, Labcd/qa$a;->FH:I

    add-int v5, v3, p1

    iget-boolean v6, p0, Labcd/qa$a;->Hw:Z

    iget-boolean v7, p0, Labcd/qa$a;->v5:Z

    iget v8, p0, Labcd/qa$a;->Zo:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-object v2

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/qa$a;->DW:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public j6(Labcd/qa$a;Labcd/na;)Labcd/qa$a;
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/qa$a;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x118cdf17c787d3fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v0, p1, Labcd/qa$a;->v5:Z

    if-eqz v0, :cond_17

    iget v0, p1, Labcd/qa$a;->Zo:I

    iget v1, p0, Labcd/qa$a;->Zo:I

    if-ge v0, v1, :cond_17

    return-object p1

    :cond_17
    iget-boolean v0, p0, Labcd/qa$a;->v5:Z

    if-eqz v0, :cond_22

    iget v0, p0, Labcd/qa$a;->Zo:I

    iget v1, p1, Labcd/qa$a;->Zo:I

    if-ge v0, v1, :cond_22

    return-object p0

    :cond_22
    iget-boolean v0, p1, Labcd/qa$a;->Hw:Z

    if-nez v0, :cond_49

    iget-boolean v1, p0, Labcd/qa$a;->Hw:Z

    if-nez v1, :cond_49

    iget v0, p1, Labcd/qa$a;->Zo:I

    iget v1, p0, Labcd/qa$a;->Zo:I

    if-le v0, v1, :cond_31

    return-object p0

    :cond_31
    if-le v1, v0, :cond_34

    return-object p1

    :cond_34
    iget-object v3, p0, Labcd/qa$a;->VH:Labcd/na;

    if-ne p2, v3, :cond_39

    return-object p0

    :cond_39
    iget-object v0, p1, Labcd/qa$a;->VH:Labcd/na;

    if-ne p2, v0, :cond_3e

    return-object p1

    :cond_3e
    new-instance v0, Labcd/qa$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    return-object v0

    :cond_49
    if-eqz v0, :cond_62

    iget-boolean v1, p0, Labcd/qa$a;->Hw:Z

    if-nez v1, :cond_62

    iget-object v3, p0, Labcd/qa$a;->VH:Labcd/na;

    iget v0, p0, Labcd/qa$a;->FH:I

    new-instance v1, Labcd/qa$a;

    iget v2, p1, Labcd/qa$a;->FH:I

    add-int v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Labcd/qa$a;->Zo:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    return-object v1

    :cond_62
    iget-boolean v1, p0, Labcd/qa$a;->Hw:Z

    if-eqz v1, :cond_7b

    if-nez v0, :cond_7b

    iget-object v3, p1, Labcd/qa$a;->VH:Labcd/na;

    iget v0, p0, Labcd/qa$a;->FH:I

    new-instance v1, Labcd/qa$a;

    iget v2, p1, Labcd/qa$a;->FH:I

    add-int v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p1, Labcd/qa$a;->Zo:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V
    :try_end_7a
    .catchall {:try_start_0 .. :try_end_7a} :catchall_7c

    return-object v1

    :cond_7b
    return-object p0

    :catchall_7c
    move-exception v0

    sget-boolean v1, Labcd/qa$a;->DW:Z

    if-eqz v1, :cond_8d

    const-wide v2, 0x118cdf17c787d3fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8d
    throw v0
.end method
