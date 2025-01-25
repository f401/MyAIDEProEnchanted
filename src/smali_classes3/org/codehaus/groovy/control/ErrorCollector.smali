.class public Lorg/codehaus/groovy/control/ErrorCollector;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Ljava/util/LinkedList;

.field protected FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

.field protected j6:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/control/CompilerConfiguration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/control/ErrorCollector;->j6:Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/codehaus/groovy/control/ErrorCollector;->DW:Ljava/util/LinkedList;

    iput-object p1, p0, Lorg/codehaus/groovy/control/ErrorCollector;->FH:Lorg/codehaus/groovy/control/CompilerConfiguration;

    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/control/messages/Message;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/control/ErrorCollector;->DW:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/ErrorCollector;->DW:Ljava/util/LinkedList;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/groovy/control/ErrorCollector;->DW:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
