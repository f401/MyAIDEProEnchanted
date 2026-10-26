.class public final Lv/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/HashSet;

.field public static c:Ljava/util/HashMap;

.field public static d:Ljava/util/HashSet;

.field public static e:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 29

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lv/a;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lv/a;->b:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lv/a;->c:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lv/a;->d:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lv/a;->e:Ljava/util/HashMap;

    sget-object v3, Ln/a;->a:Lc/n;

    sget-object v3, Ls/a;->f:Lc/n;

    sget-object v4, Ls/a;->a:Lc/n;

    sget-object v5, Ln/a;->g:Lc/n;

    sget-object v6, Lf/a;->b:Lc/n;

    sget-object v6, Lf/a;->c:Lc/n;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v7, Ln/a;->b:Lc/n;

    const-string v8, "MD2WITHRSAENCRYPTION"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v8, "MD2WITHRSA"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v8, Ln/a;->d:Lc/n;

    const-string v9, "MD5WITHRSAENCRYPTION"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v9, "MD5WITHRSA"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v9, Ln/a;->e:Lc/n;

    const-string v10, "SHA1WITHRSAENCRYPTION"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v10, "SHA1WITHRSA"

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v10, Ln/a;->k:Lc/n;

    const-string v11, "SHA224WITHRSAENCRYPTION"

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v11, "SHA224WITHRSA"

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v11, Ln/a;->h:Lc/n;

    const-string v12, "SHA256WITHRSAENCRYPTION"

    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v12, "SHA256WITHRSA"

    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v12, Ln/a;->i:Lc/n;

    const-string v13, "SHA384WITHRSAENCRYPTION"

    invoke-virtual {v6, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v13, "SHA384WITHRSA"

    invoke-virtual {v6, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    sget-object v13, Ln/a;->j:Lc/n;

    const-string v14, "SHA512WITHRSAENCRYPTION"

    invoke-virtual {v6, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA512WITHRSA"

    invoke-virtual {v6, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA1WITHRSAANDMGF1"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA224WITHRSAANDMGF1"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA256WITHRSAANDMGF1"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA384WITHRSAANDMGF1"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "SHA512WITHRSAANDMGF1"

    invoke-virtual {v6, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v6, Lo/a;->d:Lc/n;

    const-string v14, "RIPEMD160WITHRSAENCRYPTION"

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v14, "RIPEMD160WITHRSA"

    invoke-virtual {v5, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v14, Lo/a;->e:Lc/n;

    const-string v15, "RIPEMD128WITHRSAENCRYPTION"

    invoke-virtual {v5, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v15, "RIPEMD128WITHRSA"

    invoke-virtual {v5, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v15, Lo/a;->f:Lc/n;

    const-string v16, "RIPEMD256WITHRSAENCRYPTION"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v16, "RIPEMD256WITHRSA"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v16, "SHA1WITHDSA"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v16, "DSAWITHSHA1"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v16, Lk/a;->p:Lc/n;

    const-string v17, "SHA224WITHDSA"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v17, Lk/a;->q:Lc/n;

    const-string v18, "SHA256WITHDSA"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v18, Lk/a;->r:Lc/n;

    const-string v19, "SHA384WITHDSA"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v19, Lk/a;->s:Lc/n;

    const-string v20, "SHA512WITHDSA"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v20, "SHA1WITHECDSA"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v20, "ECDSAWITHSHA1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v20, Ls/a;->b:Lc/n;

    const-string v21, "SHA224WITHECDSA"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v21, Ls/a;->c:Lc/n;

    const-string v22, "SHA256WITHECDSA"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v22, Ls/a;->d:Lc/n;

    const-string v23, "SHA384WITHECDSA"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v23, Ls/a;->e:Lc/n;

    const-string v24, "SHA512WITHECDSA"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v24, Lf/a;->d:Lc/n;

    const-string v25, "GOST3411WITHGOST3410"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v25, "GOST3411WITHGOST3410-94"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v25, Lf/a;->e:Lc/n;

    const-string v26, "GOST3411WITHECGOST3410"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "GOST3411WITHECGOST3410-2001"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "GOST3411WITHGOST3410-2001"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA1WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->a:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA224WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->b:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA256WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->c:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA384WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->d:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA512WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->e:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v27, Le/a;->f:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA1WITHCVC-ECDSA"

    sget-object v27, Lg/a;->a:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA224WITHCVC-ECDSA"

    sget-object v27, Lg/a;->b:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA256WITHCVC-ECDSA"

    sget-object v27, Lg/a;->c:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA384WITHCVC-ECDSA"

    sget-object v27, Lg/a;->d:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    const-string v26, "SHA512WITHCVC-ECDSA"

    sget-object v27, Lg/a;->e:Lc/n;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v26, Ld/a;->b:Lc/n;

    const-string v27, "SHA3-512WITHSPHINCS256"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->a:Ljava/util/HashMap;

    sget-object v27, Ld/a;->a:Lc/n;

    const-string v28, "SHA512WITHSPHINCS256"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lv/a;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lv/a;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->b:Ljava/util/HashSet;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lv/a;->d:Ljava/util/HashSet;

    invoke-virtual {v3, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v3, Lm/a;->a:Lc/n;

    sget-object v4, Lc/ax;->a:Lc/ax;

    new-instance v5, Lr/a;

    invoke-direct {v5, v3, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sget-object v16, Lv/a;->c:Ljava/util/HashMap;

    const-string v17, "SHA1WITHRSAANDMGF1"

    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-static {v5, v0}, Lv/a;->f(Lr/a;I)Ln/b;

    move-result-object v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk/a;->d:Lc/n;

    new-instance v16, Lr/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sget-object v17, Lv/a;->c:Ljava/util/HashMap;

    const-string v18, "SHA224WITHRSAANDMGF1"

    const/16 v19, 0x1c

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Lv/a;->f(Lr/a;I)Ln/b;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v16, Lk/a;->a:Lc/n;

    new-instance v17, Lr/a;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sget-object v18, Lv/a;->c:Ljava/util/HashMap;

    const-string v19, "SHA256WITHRSAANDMGF1"

    const/16 v20, 0x20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lv/a;->f(Lr/a;I)Ln/b;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v17, Lk/a;->b:Lc/n;

    new-instance v18, Lr/a;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sget-object v19, Lv/a;->c:Ljava/util/HashMap;

    const-string v20, "SHA384WITHRSAANDMGF1"

    const/16 v21, 0x30

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lv/a;->f(Lr/a;I)Ln/b;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v18, Lk/a;->c:Lc/n;

    new-instance v19, Lr/a;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sget-object v4, Lv/a;->c:Ljava/util/HashMap;

    const-string v20, "SHA512WITHRSAANDMGF1"

    const/16 v21, 0x40

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lv/a;->f(Lr/a;I)Ln/b;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v4, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    sget-object v5, Ln/a;->n:Lc/n;

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    sget-object v5, Ln/a;->c:Lc/n;

    sget-object v7, Ln/a;->o:Lc/n;

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    sget-object v5, Ln/a;->p:Lc/n;

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lv/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    sget-object v4, Lo/a;->b:Lc/n;

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    sget-object v4, Lo/a;->a:Lc/n;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    sget-object v4, Lo/a;->c:Lc/n;

    invoke-virtual {v3, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    sget-object v4, Lf/a;->a:Lc/n;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lv/a;->e:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f(Lr/a;I)Ln/b;
    .locals 6

    new-instance v0, Ln/b;

    new-instance v1, Lr/a;

    sget-object v2, Ln/a;->f:Lc/n;

    invoke-direct {v1, v2, p0}, Lr/a;-><init>(Lc/n;Lc/e;)V

    new-instance v2, Lc/k;

    int-to-long v4, p1

    invoke-direct {v2, v4, v5}, Lc/k;-><init>(J)V

    new-instance v3, Lc/k;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Lc/k;-><init>(J)V

    invoke-direct {v0, p0, v1, v2, v3}, Ln/b;-><init>(Lr/a;Lr/a;Lc/k;Lc/k;)V

    return-object v0
.end method
