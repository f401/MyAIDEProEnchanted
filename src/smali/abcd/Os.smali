.class public final Labcd/Os;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/Os;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Labcd/Os;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/Qs;

.field private final Hw:Labcd/Ps;

.field private v5:Labcd/Ps;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Labcd/Os;->DW:Ljava/lang/String;

    iput-object p2, p0, Labcd/Os;->FH:Labcd/Qs;

    iput-object p3, p0, Labcd/Os;->Hw:Labcd/Ps;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Os;->v5:Labcd/Ps;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterTypes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "returnType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Labcd/Os;)Labcd/Os;
    .registers 4

    sget-object v1, Labcd/Os;->j6:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Labcd/Os;->Hw()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Os;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static DW(Ljava/lang/String;)[Labcd/Qs;
    .registers 8

    const/16 v6, 0x29

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    :goto_1
    if-eqz v1, :cond_3

    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-array v0, v0, [Labcd/Qs;

    return-object v0

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public static j6(Labcd/Qs;I)Labcd/Os;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Os;->j6(Ljava/lang/String;)Labcd/Os;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)Labcd/Os;
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    sget-object v2, Labcd/Os;->j6:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v0, Labcd/Os;->j6:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Os;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Labcd/Os;->DW(Ljava/lang/String;)[Labcd/Qs;

    move-result-object v5

    const/4 v2, 0x1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x29

    if-ne v4, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/Qs;->FH(Ljava/lang/String;)Labcd/Qs;

    move-result-object v2

    new-instance v3, Labcd/Ps;

    invoke-direct {v3, v0}, Labcd/Ps;-><init>(I)V

    :goto_2
    if-ge v1, v0, :cond_1

    aget-object v4, v5, v1

    invoke-virtual {v3, v1, v4}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    new-instance v0, Labcd/Os;

    invoke-direct {v0, p0, v2, v3}, Labcd/Os;-><init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V

    invoke-static {v0}, Labcd/Os;->DW(Labcd/Os;)Labcd/Os;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_3
    const/16 v6, 0x5b

    if-ne v4, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_3

    :cond_3
    const/16 v6, 0x4c

    if-ne v4, v6, :cond_5

    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    :goto_4
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v2

    aput-object v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad descriptor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Ljava/lang/String;Labcd/Qs;ZZ)Labcd/Os;
    .registers 6

    invoke-static {p0}, Labcd/Os;->j6(Ljava/lang/String;)Labcd/Os;

    move-result-object v0

    if-eqz p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_1

    const v1, 0x7fffffff

    invoke-virtual {p1, v1}, Labcd/Qs;->j6(I)Labcd/Qs;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1}, Labcd/Os;->j6(Labcd/Qs;)Labcd/Os;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public VH()Labcd/Ps;
    .registers 2

    iget-object v0, p0, Labcd/Os;->Hw:Labcd/Ps;

    return-object v0
.end method

.method public Zo()Labcd/Ps;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/Os;->v5:Labcd/Ps;

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v4

    new-instance v2, Labcd/Ps;

    invoke-direct {v2, v4}, Labcd/Ps;-><init>(I)V

    move v1, v0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_1

    iget-object v0, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v0, v3}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->gW()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v3, v0}, Labcd/Ps;->j6(ILabcd/Qs;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Labcd/Os;->v5:Labcd/Ps;

    :cond_2
    iget-object v0, p0, Labcd/Os;->v5:Labcd/Ps;

    return-object v0

    :cond_3
    iget-object v0, p0, Labcd/Os;->Hw:Labcd/Ps;

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Os;

    invoke-virtual {p0, p1}, Labcd/Os;->j6(Labcd/Os;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Labcd/Os;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    check-cast p1, Labcd/Os;

    iget-object v1, p1, Labcd/Os;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Os;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/Os;->FH:Labcd/Qs;

    iget-object v2, p1, Labcd/Os;->FH:Labcd/Qs;

    invoke-virtual {v1, v2}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v3

    iget-object v1, p1, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1, v2}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v1

    iget-object v6, p1, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v6, v2}, Labcd/Ps;->get(I)Labcd/Qs;

    move-result-object v6

    invoke-virtual {v1, v6}, Labcd/Qs;->j6(Labcd/Qs;)I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    if-ge v3, v4, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/Qs;)Labcd/Os;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/Qs;->J8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Os;->DW:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/Os;->Hw:Labcd/Ps;

    invoke-virtual {v1, p1}, Labcd/Ps;->FH(Labcd/Qs;)Labcd/Ps;

    move-result-object v1

    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v2, Labcd/Os;

    iget-object v3, p0, Labcd/Os;->FH:Labcd/Qs;

    invoke-direct {v2, v0, v3, v1}, Labcd/Os;-><init>(Ljava/lang/String;Labcd/Qs;Labcd/Ps;)V

    invoke-static {v2}, Labcd/Os;->DW(Labcd/Os;)Labcd/Os;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Os;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public we()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/Os;->FH:Labcd/Qs;

    return-object v0
.end method
