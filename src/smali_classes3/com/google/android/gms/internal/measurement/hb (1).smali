.class public abstract Lcom/google/android/gms/internal/measurement/hb;
.super Ljava/lang/Object;


# instance fields
.field DW:I

.field private FH:I

.field Hw:Lcom/google/android/gms/internal/measurement/kb;

.field j6:I

.field private v5:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/measurement/hb;->DW:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/measurement/hb;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/hb;->v5:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ib;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/hb;-><init>()V

    return-void
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/measurement/hb;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/hb;->j6([BIIZ)Lcom/google/android/gms/internal/measurement/hb;

    move-result-object p0

    return-object p0
.end method

.method static j6([BIIZ)Lcom/google/android/gms/internal/measurement/hb;
    .registers 10

    new-instance p3, Lcom/google/android/gms/internal/measurement/jb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/jb;-><init>([BIIZLcom/google/android/gms/internal/measurement/ib;)V

    :try_start_b
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/measurement/jb;->Hw(I)I
    :try_end_e
    .catch Lcom/google/android/gms/internal/measurement/Mb; {:try_start_b .. :try_end_e} :catch_f

    return-object p3

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract DW()F
.end method

.method public abstract DW(I)Z
.end method

.method public abstract EQ()Ljava/lang/String;
.end method

.method public final FH(I)I
    .registers 4

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hb;->DW:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/hb;->DW:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Recursion limit cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract FH()Ljava/lang/String;
.end method

.method public abstract Hw()I
.end method

.method public abstract Hw(I)I
.end method

.method public abstract J0()I
.end method

.method public abstract J8()I
.end method

.method public abstract Mr()I
.end method

.method public abstract QX()J
.end method

.method public abstract VH()I
.end method

.method public abstract Ws()I
.end method

.method public abstract XL()I
.end method

.method public abstract Zo()J
.end method

.method public abstract Zo(I)V
.end method

.method public abstract aM()J
.end method

.method public abstract gn()J
.end method

.method public abstract j3()Z
.end method

.method public abstract j6()D
.end method

.method public abstract j6(Lcom/google/android/gms/internal/measurement/wc;Lcom/google/android/gms/internal/measurement/sb;)Lcom/google/android/gms/internal/measurement/lc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/lc;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/wc<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/sb;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract j6(I)V
.end method

.method public abstract tp()Z
.end method

.method public abstract u7()I
.end method

.method public abstract v5()J
.end method

.method public abstract v5(I)V
.end method

.method public abstract we()Lcom/google/android/gms/internal/measurement/Wa;
.end method
