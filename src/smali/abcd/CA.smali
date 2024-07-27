.class public Labcd/CA;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private j6:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 2

    iput p1, p0, Labcd/CA;->FH:I

    return-void
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/CA;->DW:I

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/CA;->j6:Ljava/lang/String;

    return-void
.end method
