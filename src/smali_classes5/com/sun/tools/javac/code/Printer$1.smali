.class Lcom/sun/tools/javac/code/Printer$1;
.super Lcom/sun/tools/javac/code/Printer;
.source "Printer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Printer;->createStandardPrinter(Lcom/sun/tools/javac/api/Messages;)Lcom/sun/tools/javac/code/Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$messages:Lcom/sun/tools/javac/api/Messages;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/Messages;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/sun/tools/javac/code/Printer$1;->val$messages:Lcom/sun/tools/javac/api/Messages;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method protected capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 9

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$CapturedType;->hashCode()I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x3e5

    rem-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/sun/tools/javac/code/Printer$1;->val$messages:Lcom/sun/tools/javac/api/Messages;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 98
    check-cast p2, Ljava/util/Locale;

    invoke-super {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
