.class Labcd/YA;
.super Labcd/PC$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ZA;->j6(Labcd/yE;Labcd/KC;)Labcd/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/ZA;

.field private final FH:Labcd/QC;


# direct methods
.method constructor <init>(Labcd/ZA;Ljava/lang/String;Labcd/QC;)V
    .registers 4

    iput-object p1, p0, Labcd/YA;->DW:Labcd/ZA;

    iput-object p3, p0, Labcd/YA;->FH:Labcd/QC;

    invoke-direct {p0, p2}, Labcd/PC$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/QC;)V
    .registers 3

    iget-object v0, p0, Labcd/YA;->FH:Labcd/QC;

    invoke-virtual {p1, v0}, Labcd/QC;->j6(Labcd/QC;)V

    return-void
.end method
