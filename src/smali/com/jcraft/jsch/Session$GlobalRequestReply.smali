.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalRequestReply"
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field final Hw:Lcom/jcraft/jsch/Session;

.field private j6:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->Hw:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->FH:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$GlobalRequestReply;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;)V

    return-void
.end method


# virtual methods
.method DW()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW:I

    return v0
.end method

.method DW(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW:I

    return-void
.end method

.method FH()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6:Ljava/lang/Thread;

    return-object v0
.end method

.method j6()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->FH:I

    return v0
.end method

.method j6(I)V
    .registers 2

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->FH:I

    return-void
.end method

.method j6(Ljava/lang/Thread;)V
    .registers 3

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->j6:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->DW:I

    return-void
.end method
