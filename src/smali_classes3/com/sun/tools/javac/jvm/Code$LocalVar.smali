.class Lcom/sun/tools/javac/jvm/Code$LocalVar;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalVar"
.end annotation


# instance fields
.field length:C

.field final reg:C

.field start_pc:C

.field final sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 3

    const v0, 0xffff

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    iput-char v0, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    .line 1967
    iput-char v0, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    .line 1970
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1971
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->reg:C

    .line 1972
    return-void
.end method


# virtual methods
.method public dup()Lcom/sun/tools/javac/jvm/Code$LocalVar;
    .registers 3

    .line 1975
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/jvm/Code$LocalVar;-><init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " starts at pc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
