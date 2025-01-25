.class public Labcd/oq$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/oq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Labcd/er;

.field private final Hw:Labcd/mq;

.field private final j6:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Labcd/er;Labcd/mq;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/oq$a;->j6:I

    iput-object p2, p0, Labcd/oq$a;->DW:Ljava/lang/String;

    iput-object p3, p0, Labcd/oq$a;->FH:Labcd/er;

    iput-object p4, p0, Labcd/oq$a;->Hw:Labcd/mq;

    return-void
.end method


# virtual methods
.method public DW()Labcd/mq;
    .registers 2

    iget-object v0, p0, Labcd/oq$a;->Hw:Labcd/mq;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/oq$a;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/oq$a;->j6:I

    return v0
.end method

.method public j6()Labcd/er;
    .registers 2

    iget-object v0, p0, Labcd/oq$a;->FH:Labcd/er;

    return-object v0
.end method
