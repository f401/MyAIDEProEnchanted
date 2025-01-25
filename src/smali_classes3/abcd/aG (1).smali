.class Labcd/aG;
.super Labcd/XF;


# static fields
.field private static final j6:Labcd/dG;


# instance fields
.field private final DW:Labcd/qG;

.field private final FH:Labcd/QF;

.field private final Hw:Labcd/yG;

.field private VH:I

.field private Zo:Labcd/dG;

.field gn:Z

.field private final v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/dG;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/dG;-><init>(Labcd/YD;)V

    sput-object v0, Labcd/aG;->j6:Labcd/dG;

    const v1, 0x7fffffff

    iput v1, v0, Labcd/dG;->Ws:I

    return-void
.end method

.method constructor <init>(Labcd/qG;Labcd/QF;Labcd/yG;I)V
    .registers 6

    invoke-direct {p0}, Labcd/XF;-><init>()V

    sget-object v0, Labcd/aG;->j6:Labcd/dG;

    iput-object v0, p0, Labcd/aG;->Zo:Labcd/dG;

    const/4 v0, 0x6

    iput v0, p0, Labcd/aG;->VH:I

    iput-object p1, p0, Labcd/aG;->DW:Labcd/qG;

    iput-object p2, p0, Labcd/aG;->FH:Labcd/QF;

    iput-object p3, p0, Labcd/aG;->Hw:Labcd/yG;

    iput p4, p0, Labcd/aG;->v5:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/aG;->gn:Z

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Labcd/aG;->v5:I

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method j6()Labcd/dG;
    .registers 10

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Labcd/aG;->FH:Labcd/QF;

    invoke-virtual {v1}, Labcd/QF;->j6()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_11

    iget-object v1, p0, Labcd/aG;->DW:Labcd/qG;

    iget-object v1, v1, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v1}, Labcd/IE;->Hw()V

    return-object v0

    :cond_11
    iget v2, v1, Labcd/iG;->EQ:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_2f

    :cond_1a
    iget-object v2, p0, Labcd/aG;->Hw:Labcd/yG;

    invoke-virtual {v2}, Labcd/yG;->j6()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Labcd/aG;->DW:Labcd/qG;

    invoke-virtual {v1, v2}, Labcd/dG;->DW(Labcd/qG;)V

    :cond_27
    iget-object v2, p0, Labcd/aG;->Hw:Labcd/yG;

    iget-object v5, p0, Labcd/aG;->DW:Labcd/qG;

    invoke-virtual {v2, v5, v1}, Labcd/yG;->j6(Labcd/qG;Labcd/dG;)Z

    move-result v2

    :goto_2f
    iget-object v5, v1, Labcd/dG;->J8:[Labcd/dG;

    array-length v6, v5

    :goto_32
    if-lt v4, v6, :cond_78

    iget-object v4, p0, Labcd/aG;->DW:Labcd/qG;

    invoke-virtual {v4, v1}, Labcd/qG;->j6(Labcd/dG;)V

    iget v4, v1, Labcd/iG;->EQ:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_6e

    iget-object v2, p0, Labcd/aG;->FH:Labcd/QF;

    invoke-virtual {v2, v3}, Labcd/QF;->DW(I)Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_57

    iget-object v2, p0, Labcd/aG;->FH:Labcd/QF;

    invoke-virtual {v2}, Labcd/QF;->Hw()Labcd/dG;

    move-result-object v2

    if-eqz v2, :cond_5a

    iget v2, v2, Labcd/dG;->Ws:I

    iget-object v4, p0, Labcd/aG;->Zo:Labcd/dG;

    iget v4, v4, Labcd/dG;->Ws:I

    if-lt v2, v4, :cond_5a

    :cond_57
    iput v3, p0, Labcd/aG;->VH:I

    goto :goto_66

    :cond_5a
    iget v2, p0, Labcd/aG;->VH:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/aG;->VH:I

    if-eqz v2, :cond_63

    goto :goto_66

    :cond_63
    sget-object v1, Labcd/sD;->j6:Labcd/sD;

    throw v1

    :goto_66
    iget-boolean v2, p0, Labcd/aG;->gn:Z

    if-eqz v2, :cond_0

    :goto_6a
    invoke-virtual {v1}, Labcd/dG;->j3()V

    goto :goto_0

    :cond_6e
    if-eqz v2, :cond_73

    iput-object v1, p0, Labcd/aG;->Zo:Labcd/dG;

    return-object v1

    :cond_73
    iget-boolean v2, p0, Labcd/aG;->gn:Z
    :try_end_75
    .catch Labcd/sD; {:try_start_1 .. :try_end_75} :catch_9a

    if-eqz v2, :cond_0

    goto :goto_6a

    :cond_78
    aget-object v7, v5, v4

    :try_start_7a
    iget v8, v7, Labcd/iG;->EQ:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_81

    goto :goto_97

    :cond_81
    iget v8, v7, Labcd/iG;->EQ:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_8c

    iget-object v8, p0, Labcd/aG;->DW:Labcd/qG;

    invoke-virtual {v7, v8}, Labcd/dG;->j6(Labcd/qG;)V

    :cond_8c
    iget v8, v7, Labcd/iG;->EQ:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Labcd/iG;->EQ:I

    iget-object v8, p0, Labcd/aG;->FH:Labcd/QF;

    invoke-virtual {v8, v7}, Labcd/QF;->j6(Labcd/dG;)V
    :try_end_97
    .catch Labcd/sD; {:try_start_7a .. :try_end_97} :catch_9a

    :goto_97
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :catch_9a
    move-exception v1

    iget-object v1, p0, Labcd/aG;->DW:Labcd/qG;

    iget-object v1, v1, Labcd/qG;->DW:Labcd/IE;

    invoke-virtual {v1}, Labcd/IE;->Hw()V

    iget-object v1, p0, Labcd/aG;->FH:Labcd/QF;

    invoke-virtual {v1}, Labcd/QF;->FH()V

    return-object v0
.end method
