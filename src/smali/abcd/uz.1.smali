.class public abstract Labcd/uz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/uz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final DW:Labcd/sz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsz",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final FH:Lio/fabric/sdk/android/services/common/k;

.field protected final Hw:Labcd/vz;

.field protected final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/wz;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile Zo:J

.field protected final j6:Landroid/content/Context;

.field private final v5:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Labcd/sz;Lio/fabric/sdk/android/services/common/k;Labcd/vz;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lsz",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/common/k;",
            "Labcd/vz;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Labcd/uz;->VH:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Labcd/uz;->j6:Landroid/content/Context;

    iput-object p2, p0, Labcd/uz;->DW:Labcd/sz;

    iput-object p4, p0, Labcd/uz;->Hw:Labcd/vz;

    iput-object p3, p0, Labcd/uz;->FH:Lio/fabric/sdk/android/services/common/k;

    iget-object v0, p0, Labcd/uz;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/uz;->Zo:J

    iput p5, p0, Labcd/uz;->v5:I

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Labcd/uz;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/wz;

    :try_start_0
    invoke-interface {v0, p1}, Labcd/wz;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Labcd/uz;->j6:Landroid/content/Context;

    const-string v3, "One of the roll over listeners threw an exception"

    invoke-static {v2, v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j6(I)V
    .registers 7

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-virtual {p0}, Labcd/uz;->v5()I

    move-result v1

    invoke-interface {v0, p1, v1}, Labcd/vz;->j6(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v4}, Labcd/vz;->j6()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Labcd/uz;->v5()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/uz;->j6:Landroid/content/Context;

    const/4 v2, 0x4

    const-string v3, "Fabric"

    invoke-static {v1, v2, v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/uz;->VH()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public DW()V
    .registers 10

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0}, Labcd/vz;->DW()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Labcd/uz;->Zo()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Labcd/uz;->j6:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/TreeSet;

    new-instance v3, Labcd/tz;

    invoke-direct {v3, p0}, Labcd/tz;-><init>(Labcd/uz;)V

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v4, Labcd/uz$a;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Labcd/uz;->j6(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v4, v0, v6, v7}, Labcd/uz$a;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/uz$a;

    iget-object v0, v0, Labcd/uz$a;->j6:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_3
    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0, v3}, Labcd/vz;->j6(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected abstract FH()Ljava/lang/String;
.end method

.method public Hw()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Labcd/vz;->j6(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public VH()Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0}, Labcd/vz;->FH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/uz;->FH()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v3, v0}, Labcd/vz;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/uz;->j6:Landroid/content/Context;

    const/4 v4, 0x4

    const-string v5, "Fabric"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "generated new file %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v5, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/uz;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/uz;->Zo:J

    :goto_0
    invoke-direct {p0, v0}, Labcd/uz;->DW(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    move v1, v2

    goto :goto_0
.end method

.method protected Zo()I
    .registers 2

    iget v0, p0, Labcd/uz;->v5:I

    return v0
.end method

.method public j6(Ljava/lang/String;)J
    .registers 7

    const-wide/16 v0, 0x0

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0}, Labcd/vz;->DW()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/vz;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0}, Labcd/vz;->Hw()V

    return-void
.end method

.method public j6(Labcd/wz;)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/uz;->VH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/uz;->DW:Labcd/sz;

    invoke-interface {v0, p1}, Labcd/sz;->j6(Ljava/lang/Object;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Labcd/uz;->j6(I)V

    iget-object v1, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v1, v0}, Labcd/vz;->j6([B)V

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/uz;->Hw:Labcd/vz;

    invoke-interface {v0, p1}, Labcd/vz;->j6(Ljava/util/List;)V

    return-void
.end method

.method protected v5()I
    .registers 2

    const/16 v0, 0x1f40

    return v0
.end method
