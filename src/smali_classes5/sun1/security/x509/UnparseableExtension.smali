.class Lsun1/security/x509/UnparseableExtension;
.super Lsun1/security/x509/Extension;


# instance fields
.field private name:Ljava/lang/String;

.field private why:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lsun1/security/x509/Extension;Ljava/lang/Throwable;)V
    .registers 6

    invoke-direct {p0, p1}, Lsun1/security/x509/Extension;-><init>(Lsun1/security/x509/Extension;)V

    const-string v0, ""

    iput-object v0, p0, Lsun1/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    :try_start_7
    invoke-virtual {p1}, Lsun1/security/x509/Extension;->getExtensionId()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/OIDMap;->getClass(Lsun1/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string v1, "NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/UnparseableExtension;->name:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_35

    :cond_32
    :goto_32
    iput-object p2, p0, Lsun1/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    return-void

    :catch_35
    move-exception v0

    goto :goto_32
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun1/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Unparseable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/UnparseableExtension;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "extension due to\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun1/security/x509/UnparseableExtension;->why:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lsun1/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun1/misc/HexDumpEncoder;-><init>()V

    invoke-virtual {p0}, Lsun1/security/x509/UnparseableExtension;->getExtensionValue()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun1/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
