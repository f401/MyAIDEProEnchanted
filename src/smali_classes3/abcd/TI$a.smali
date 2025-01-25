.class public Labcd/TI$a;
.super Labcd/TI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final gn:Labcd/EI;


# direct methods
.method public constructor <init>(Labcd/EI;)V
    .registers 2

    invoke-direct {p0}, Labcd/TI;-><init>()V

    iput-object p1, p0, Labcd/TI$a;->gn:Labcd/EI;

    return-void
.end method


# virtual methods
.method protected j6()V
    .registers 2

    iget-object v0, p0, Labcd/TI$a;->gn:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    return-void
.end method

.method protected j6(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Labcd/TI$a;->gn:Labcd/EI;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/EI;->j6(Ljava/lang/String;)V

    return-void
.end method
