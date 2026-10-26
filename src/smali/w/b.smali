.class public final Lw/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;

.field public static final e:Ljava/util/HashMap;


# instance fields
.field public f:Lb/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw/b;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lw/b;->b:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lw/b;->c:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lw/b;->d:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lw/b;->e:Ljava/util/HashMap;

    new-instance v5, Lc/n;

    const-string v6, "1.2.840.113549.1.1.5"

    invoke-direct {v5, v6}, Lc/n;-><init>(Ljava/lang/String;)V

    const-string v6, "SHA1WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ln/a;->k:Lc/n;

    const-string v6, "SHA224WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ln/a;->h:Lc/n;

    const-string v6, "SHA256WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ln/a;->i:Lc/n;

    const-string v6, "SHA384WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ln/a;->j:Lc/n;

    const-string v6, "SHA512WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lf/a;->d:Lc/n;

    const-string v6, "GOST3411WITHGOST3410"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lf/a;->e:Lc/n;

    const-string v6, "GOST3411WITHECGOST3410"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->a:Lc/n;

    const-string v6, "SHA1WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->b:Lc/n;

    const-string v6, "SHA224WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->c:Lc/n;

    const-string v6, "SHA256WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->d:Lc/n;

    const-string v6, "SHA384WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->e:Lc/n;

    const-string v6, "SHA512WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Le/a;->f:Lc/n;

    const-string v6, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg/a;->a:Lc/n;

    const-string v6, "SHA1WITHCVC-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg/a;->b:Lc/n;

    const-string v6, "SHA224WITHCVC-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg/a;->c:Lc/n;

    const-string v6, "SHA256WITHCVC-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg/a;->d:Lc/n;

    const-string v6, "SHA384WITHCVC-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lg/a;->e:Lc/n;

    const-string v6, "SHA512WITHCVC-ECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/n;

    const-string v6, "1.2.840.113549.1.1.4"

    invoke-direct {v5, v6}, Lc/n;-><init>(Ljava/lang/String;)V

    const-string v6, "MD5WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/n;

    const-string v6, "1.2.840.113549.1.1.2"

    invoke-direct {v5, v6}, Lc/n;-><init>(Ljava/lang/String;)V

    const-string v6, "MD2WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/n;

    const-string v6, "1.2.840.10040.4.3"

    invoke-direct {v5, v6}, Lc/n;-><init>(Ljava/lang/String;)V

    const-string v6, "SHA1WITHDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls/a;->a:Lc/n;

    const-string v6, "SHA1WITHECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls/a;->b:Lc/n;

    const-string v6, "SHA224WITHECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls/a;->c:Lc/n;

    const-string v6, "SHA256WITHECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls/a;->d:Lc/n;

    const-string v6, "SHA384WITHECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls/a;->e:Lc/n;

    const-string v6, "SHA512WITHECDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lm/a;->c:Lc/n;

    const-string v6, "SHA1WITHRSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lm/a;->b:Lc/n;

    const-string v6, "SHA1WITHDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->p:Lc/n;

    const-string v6, "SHA224WITHDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->q:Lc/n;

    const-string v6, "SHA256WITHDSA"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lm/a;->a:Lc/n;

    const-string v6, "SHA-1"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->d:Lc/n;

    const-string v6, "SHA-224"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->a:Lc/n;

    const-string v6, "SHA-256"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->b:Lc/n;

    const-string v6, "SHA-384"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->c:Lc/n;

    const-string v6, "SHA-512"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lo/a;->b:Lc/n;

    const-string v6, "RIPEMD128"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lo/a;->a:Lc/n;

    const-string v6, "RIPEMD160"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lo/a;->c:Lc/n;

    const-string v6, "RIPEMD256"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ln/a;->a:Lc/n;

    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ln/a;->t:Lc/n;

    const-string v1, "DESEDEWrap"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ln/a;->u:Lc/n;

    const-string v5, "RC2Wrap"

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk/a;->k:Lc/n;

    const-string v5, "AESWrap"

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->m:Lc/n;

    const-string v6, "AESWrap"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lk/a;->o:Lc/n;

    const-string v7, "AESWrap"

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ll/a;->a:Lc/n;

    const-string v8, "CamelliaWrap"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ll/a;->b:Lc/n;

    const-string v9, "CamelliaWrap"

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ll/a;->c:Lc/n;

    const-string v10, "CamelliaWrap"

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lj/a;->a:Lc/n;

    const-string v11, "SEEDWrap"

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Ln/a;->l:Lc/n;

    const-string v12, "DESede"

    invoke-virtual {v2, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v4, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v4, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/a;->i:Lc/n;

    const-string v1, "AES"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/a;->j:Lc/n;

    const-string v1, "AES"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/a;->l:Lc/n;

    const-string v1, "AES"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk/a;->n:Lc/n;

    const-string v1, "AES"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DESede"

    invoke-virtual {v3, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ln/a;->m:Lc/n;

    const-string v1, "RC2"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->f:Lb/b;

    return-void
.end method

.method public static g(Lr/a;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lr/a;->b:Lc/e;

    if-eqz v0, :cond_4

    .line 2
    sget-object v1, Lc/ax;->a:Lc/ax;

    invoke-virtual {v1, v0}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lr/a;->a:Lc/n;

    .line 4
    sget-object v2, Ln/a;->g:Lc/n;

    invoke-virtual {v1, v2}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ln/b;->a:Lr/a;

    .line 5
    instance-of v1, v0, Ln/b;

    if-eqz v1, :cond_1

    check-cast v0, Ln/b;

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v0, v0, Ln/b;->e:Lr/a;

    .line 8
    iget-object v2, v0, Lr/a;->a:Lc/n;

    .line 9
    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 11
    :goto_1
    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    const-string v4, "SHA3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_0
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WITHRSAANDMGF1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_3
    return-object v0

    .line 5
    :cond_1
    new-instance v1, Ln/b;

    invoke-static {v0}, Lc/t;->b(Ljava/lang/Object;)Lc/t;

    move-result-object v0

    invoke-direct {v1, v0}, Ln/b;-><init>(Lc/t;)V

    move-object v0, v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, v2, Lc/n;->b:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_3
    sget-object v0, Lu/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, v2, Lc/n;->b:Ljava/lang/String;

    goto :goto_2

    .line 14
    :cond_4
    sget-object v0, Lw/b;->a:Ljava/util/HashMap;

    .line 15
    iget-object v1, p0, Lr/a;->a:Lc/n;

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lr/a;->a:Lc/n;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 19
    :cond_5
    iget-object v0, p0, Lr/a;->a:Lc/n;

    .line 20
    iget-object v0, v0, Lc/n;->b:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public final h(Lr/a;)Ljava/security/Signature;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lw/b;->f:Lb/b;

    invoke-static {p1}, Lw/b;->g(Lr/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7
    :goto_0
    return-object v0

    .line 1
    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lw/b;->a:Ljava/util/HashMap;

    .line 3
    iget-object v2, p1, Lr/a;->a:Lc/n;

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p1, Lr/a;->a:Lc/n;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lw/b;->f:Lb/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    throw v0
.end method
