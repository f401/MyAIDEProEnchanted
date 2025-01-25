.class public Landroid/arch/lifecycle/e;
.super Landroid/arch/lifecycle/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/e$a;
    }
.end annotation


# instance fields
.field private DW:Landroid/arch/lifecycle/a$b;

.field private final FH:Landroid/arch/lifecycle/c;

.field private Hw:I

.field private VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Z

.field private j6:Labcd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La<",
            "Landroid/arch/lifecycle/b;",
            "Landroid/arch/lifecycle/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Z


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/c;)V
    .registers 3

    invoke-direct {p0}, Landroid/arch/lifecycle/a;-><init>()V

    new-instance v0, Labcd/a;

    invoke-direct {v0}, Labcd/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/e;->Hw:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/e;->v5:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/e;->Zo:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/e;->VH:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/arch/lifecycle/e;->FH:Landroid/arch/lifecycle/c;

    sget-object p1, Landroid/arch/lifecycle/a$b;->DW:Landroid/arch/lifecycle/a$b;

    iput-object p1, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    return-void
.end method

.method private static DW(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;
    .registers 3

    sget-object v0, Landroid/arch/lifecycle/d;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_34
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_37
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_3a
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private DW()V
    .registers 6

    iget-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v0}, Labcd/c;->DW()Labcd/c$d;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/e$a;

    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    iget-object v4, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/e;->FH(Landroid/arch/lifecycle/a$b;)V

    iget-object v3, p0, Landroid/arch/lifecycle/e;->FH:Landroid/arch/lifecycle/c;

    iget-object v4, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-static {v4}, Landroid/arch/lifecycle/e;->Hw(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/arch/lifecycle/e$a;->j6(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/e;->Hw()V

    goto :goto_1c

    :cond_4a
    return-void
.end method

.method private FH(Landroid/arch/lifecycle/a$b;)V
    .registers 3

    iget-object v0, p0, Landroid/arch/lifecycle/e;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private FH()Z
    .registers 4

    iget-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v0}, Labcd/c;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v0}, Labcd/c;->j6()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    iget-object v0, v0, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    iget-object v2, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v2}, Labcd/c;->FH()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/e$a;

    iget-object v2, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    if-ne v0, v2, :cond_2d

    iget-object v0, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method private static Hw(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;
    .registers 3

    sget-object v0, Landroid/arch/lifecycle/d;->DW:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    goto :goto_3b

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_35
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_38
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_3b
    :goto_3b
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    return-object p0
.end method

.method private Hw()V
    .registers 3

    iget-object v0, p0, Landroid/arch/lifecycle/e;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method static j6(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;
    .registers 3

    sget-object v0, Landroid/arch/lifecycle/d;->j6:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_22  #0x6
    sget-object p0, Landroid/arch/lifecycle/a$b;->j6:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_25  #0x5
    sget-object p0, Landroid/arch/lifecycle/a$b;->v5:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_28  #0x3, 0x4
    sget-object p0, Landroid/arch/lifecycle/a$b;->Hw:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_2b  #0x1, 0x2
    sget-object p0, Landroid/arch/lifecycle/a$b;->FH:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
        :pswitch_22  #00000006
    .end packed-switch
.end method

.method static j6(Landroid/arch/lifecycle/a$b;Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$b;
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_9

    move-object p0, p1

    :cond_9
    return-object p0
.end method

.method private j6()V
    .registers 6

    iget-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v0}, Labcd/c;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/e$a;

    :goto_1c
    iget-object v3, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    iget-object v4, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_6

    iget-boolean v3, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-static {v3}, Landroid/arch/lifecycle/e;->DW(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/e;->FH(Landroid/arch/lifecycle/a$b;)V

    iget-object v4, p0, Landroid/arch/lifecycle/e;->FH:Landroid/arch/lifecycle/c;

    invoke-virtual {v2, v4, v3}, Landroid/arch/lifecycle/e$a;->j6(Landroid/arch/lifecycle/c;Landroid/arch/lifecycle/a$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/e;->Hw()V

    goto :goto_1c

    :cond_4c
    return-void
.end method

.method private v5()V
    .registers 3

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/e;->FH()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    iget-object v1, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v1}, Labcd/c;->j6()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e$a;

    iget-object v1, v1, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_22

    invoke-direct {p0}, Landroid/arch/lifecycle/e;->j6()V

    :cond_22
    iget-object v0, p0, Landroid/arch/lifecycle/e;->j6:Labcd/a;

    invoke-virtual {v0}, Labcd/c;->FH()Ljava/util/Map$Entry;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/lifecycle/e;->Zo:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e$a;

    iget-object v0, v0, Landroid/arch/lifecycle/e$a;->j6:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroid/arch/lifecycle/e;->DW()V

    goto :goto_0

    :cond_42
    return-void
.end method


# virtual methods
.method public DW(Landroid/arch/lifecycle/a$a;)V
    .registers 3

    invoke-static {p1}, Landroid/arch/lifecycle/e;->j6(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    iget-boolean p1, p0, Landroid/arch/lifecycle/e;->v5:Z

    const/4 v0, 0x1

    if-nez p1, :cond_19

    iget p1, p0, Landroid/arch/lifecycle/e;->Hw:I

    if-eqz p1, :cond_10

    goto :goto_19

    :cond_10
    iput-boolean v0, p0, Landroid/arch/lifecycle/e;->v5:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/e;->v5()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/e;->v5:Z

    return-void

    :cond_19
    :goto_19
    iput-boolean v0, p0, Landroid/arch/lifecycle/e;->Zo:Z

    return-void
.end method

.method public j6(Landroid/arch/lifecycle/a$b;)V
    .registers 2

    iput-object p1, p0, Landroid/arch/lifecycle/e;->DW:Landroid/arch/lifecycle/a$b;

    return-void
.end method
